#include "TFile.h"
#include "TTree.h"

void ex()
{
    TFile *file = new TFile("myrun.root", "read");
    TTree *tree = (TTree*) file -> Get("step");
    for(int i = 0; i< 5000; i++)
    {
        tree->GetEntry(i);

        tree->Show();    
    }
    

}