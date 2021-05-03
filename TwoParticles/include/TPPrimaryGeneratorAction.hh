#ifndef TPPRIMARYGENERATORACTION_HH
#define TPPRIMARYGENERATORACTION_HH

#include "G4VUserPrimaryGeneratorAction.hh"
#include "G4GeneralParticleSource.hh"
#include "G4Event.hh"
#include "globals.hh"
#include "G4ParticleGun.hh"

class TPPrimaryGeneratorAction : public G4VUserPrimaryGeneratorAction
{
  public:
    TPPrimaryGeneratorAction();    
    virtual ~TPPrimaryGeneratorAction();

    // method from the base class
    virtual void GeneratePrimaries(G4Event*);         
  
  private:
    G4ParticleGun*  fParticleGun1; // pointer a to G4 gun class
    G4ParticleGun*  fParticleGun2; // pointer a to G4 gun class
};

#endif