#include "TPPrimaryGeneratorAction.hh"

#include "G4LogicalVolumeStore.hh"
#include "G4LogicalVolume.hh"
#include "G4Box.hh"
#include "G4RunManager.hh"
#include "G4GeneralParticleSource.hh"
#include "G4ParticleTable.hh"
#include "G4ParticleDefinition.hh"
#include "G4SystemOfUnits.hh"
#include "Randomize.hh"
#include "G4ParticleGun.hh"

TPPrimaryGeneratorAction::TPPrimaryGeneratorAction()
: G4VUserPrimaryGeneratorAction()
{
  fParticleGun1 = new G4ParticleGun();
  fParticleGun2 = new G4ParticleGun();

  fParticleGun1 -> SetParticlePosition(G4ThreeVector(-5.*mm, 0, -5.*mm));
  fParticleGun2 -> SetParticlePosition(G4ThreeVector(5.*mm, 0, -5.*mm));

  G4String particleName;
  G4ParticleTable* particleTable = G4ParticleTable::GetParticleTable();
  fParticleGun1->SetParticleDefinition(particleTable->FindParticle(particleName="alpha"));
  fParticleGun2->SetParticleDefinition(particleTable->FindParticle(particleName="alpha"));

  fParticleGun1->SetParticleMomentumDirection(G4ThreeVector(1,0,1).unit());
  fParticleGun2->SetParticleMomentumDirection(G4ThreeVector(-1,0,1).unit()); 

  fParticleGun1->SetParticleEnergy(5.486*MeV);
  fParticleGun2->SetParticleEnergy(5.486*MeV);
}

TPPrimaryGeneratorAction::~TPPrimaryGeneratorAction()
{
  delete fParticleGun1;
  delete fParticleGun2;
}

void TPPrimaryGeneratorAction::GeneratePrimaries(G4Event* anEvent)
{
  //this function is called at the begining of each event

  fParticleGun1 -> GeneratePrimaryVertex(anEvent);
  fParticleGun2 -> GeneratePrimaryVertex(anEvent);
}