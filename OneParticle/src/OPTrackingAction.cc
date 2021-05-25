#include "OPTrackingAction.hh"
#include "G4Track.hh"
#include "G4SystemOfUnits.hh"
#include "G4PhysicalConstants.hh"
#include "g4root.hh"

OPTrackingAction::OPTrackingAction()
:G4UserTrackingAction()
{

}

OPTrackingAction::~OPTrackingAction()
{

}

void OPTrackingAction::PreUserTrackingAction(const G4Track* track)
{
    if(track->GetParentID() != 0) return;

    G4int particleID = track->GetDynamicParticle()->GetPDGcode();
    G4double Ekin = track->GetKineticEnergy();
    
    G4ThreeVector vertex = track->GetPosition();
    G4double posX = vertex.x();
    G4double posY = vertex.y();
    G4double posZ = vertex.z();

    G4ThreeVector direction = track->GetMomentumDirection();
    G4double dirTheta = direction.theta();
    G4double dirPhi = direction.phi();

    if(dirPhi < 0.) dirPhi += 2*3.14159265;

    G4double weight = track->GetWeight();
    
    G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();
    analysisManager -> FillNtupleIColumn(0, particleID);
    analysisManager -> FillNtupleDColumn(1, Ekin);

    analysisManager -> FillNtupleDColumn(2, posX);
    analysisManager -> FillNtupleDColumn(3, posY);
    analysisManager -> FillNtupleDColumn(4, posZ);

    analysisManager -> FillNtupleDColumn(5, dirTheta);
    analysisManager -> FillNtupleDColumn(6, dirPhi);

    analysisManager -> FillNtupleDColumn(7, weight);
    analysisManager -> AddNtupleRow();

}