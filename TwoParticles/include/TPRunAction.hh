#ifndef TPRUNACTION_HH
#define TPRUNACTION_HH

#include "G4UserRunAction.hh"
#include "G4Run.hh"
#include "globals.hh"
#include "g4root.hh"

class TPRunAction : public G4UserRunAction
{
  public:
    TPRunAction();
    TPRunAction(const char *);
    virtual ~TPRunAction();

    // method from the base class
    virtual void BeginOfRunAction(const G4Run*);
    virtual void EndOfRunAction(const G4Run*);

    void SetAnalysis();

  private:
    G4String fName;
};

#endif