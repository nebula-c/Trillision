#ifndef TPDETECTORCONSTRUCTION_HH
#define TPDETECTORCONSTRUCTION_HH

#include "G4VUserDetectorConstruction.hh"
#include "globals.hh"

class G4VPhysicalVolume;
class G4LogicalVolume;

class TPDetectorConstruction : public G4VUserDetectorConstruction
{

  public:
    TPDetectorConstruction();
   ~TPDetectorConstruction();

    virtual G4VPhysicalVolume* Construct();

};

#endif