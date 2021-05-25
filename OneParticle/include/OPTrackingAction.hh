#ifndef OPTRACKINGACTION_HH
#define OPTOPTRACKINGACTION_HH

#include "G4UserTrackingAction.hh"
#include "globals.hh"

class OPTrackingAction : public G4UserTrackingAction
{
    public : 
        OPTrackingAction();
        ~OPTrackingAction();

        virtual void PreUserTrackingAction(const G4Track*);
        virtual void PostUserTrackingAction(const G4Track*);
    private :
        
};

#endif