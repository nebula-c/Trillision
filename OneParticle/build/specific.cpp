#include "TFile.h"
#include "TTree.h"

void specific()
{
    TFile *file = new TFile("OnlyA.root", "read");
    TTree *tree = (TTree*) file -> Get("step");

    Int_t eventID, volumeID, particleID;
    double_t rx,ry,rz;
    int count=1, nowEventID=0;

    tree->SetBranchAddress("eventID",&eventID);
    tree->SetBranchAddress("volumeID",&volumeID);
    tree->SetBranchAddress("particleID", &particleID);
    tree->SetBranchAddress("prePosition.x",&rx);
    tree->SetBranchAddress("prePosition.y",&ry);
    tree->SetBranchAddress("prePosition.z",&rz);

    Long64_t nentries = tree->GetEntries();

    for(int i=0; i<nentries; i++)
    {
        tree->GetEntry(i);
        
        if(particleID!=57 && particleID!=284)
        {
            tree->Show(i);
        }
    }
}