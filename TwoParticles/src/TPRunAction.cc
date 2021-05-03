#include "TPRunAction.hh"

TPRunAction::TPRunAction()
: G4UserRunAction()
{
  fName = "data";
  SetAnalysis();
}

TPRunAction::TPRunAction(const char *name)
: G4UserRunAction()
{
  fName = name;
  SetAnalysis();
}

TPRunAction::~TPRunAction()
{
  G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();
  analysisManager -> Write();
  analysisManager -> CloseFile();
  delete G4AnalysisManager::Instance();
}

void TPRunAction::BeginOfRunAction(const G4Run*)
{
}

void TPRunAction::EndOfRunAction(const G4Run*)
{
}

void TPRunAction::SetAnalysis()
{
  G4AnalysisManager* analysisManager = G4AnalysisManager::Instance();
  analysisManager -> OpenFile(fName);

  analysisManager -> CreateNtuple("step", "step");
  analysisManager -> CreateNtupleIColumn("eventID");
  analysisManager -> CreateNtupleIColumn("volumeID");
  
  analysisManager -> CreateNtupleIColumn("particleID");
  analysisManager -> CreateNtupleSColumn("particleName");

  analysisManager -> CreateNtupleDColumn("prePosition.x");
  analysisManager -> CreateNtupleDColumn("prePosition.y");
  analysisManager -> CreateNtupleDColumn("prePosition.z");

  analysisManager -> CreateNtupleDColumn("preMomentum.x");
  analysisManager -> CreateNtupleDColumn("preMomentum.y");
  analysisManager -> CreateNtupleDColumn("preMomentum.z");

  analysisManager -> CreateNtupleDColumn("edep");
  analysisManager -> FinishNtuple();
}