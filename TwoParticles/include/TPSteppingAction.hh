#ifndef TPSTEPPINGACTION_HH
#define TPSTEPPINGACTION_HH

#include "G4UserSteppingAction.hh"
#include "G4Step.hh"
#include "globals.hh"
#include "g4root.hh"

class TPSteppingAction : public G4UserSteppingAction
{
  public:
    TPSteppingAction();
    virtual ~TPSteppingAction();

    // method from the base class
    virtual void UserSteppingAction(const G4Step*);
};

#endif