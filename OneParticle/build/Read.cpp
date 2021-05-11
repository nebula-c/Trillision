#include "TFile.h"
#include "TTree.h"
#include "TGraph.h"
#include "TH1F.h"
#include "TLegend.h"
void Read()
{
    TFile *file = new TFile("plane.root", "read");
    TTree *tree = (TTree*) file -> Get("step");
    TGraph *graph = new TGraph();

    Int_t eventID, volumeID, particleID;
    double_t rx,ry,rz;
    int count=0, nowEventID=0;
    bool amIdetected = false;

    tree->SetBranchAddress("eventID",&eventID);
    tree->SetBranchAddress("volumeID",&volumeID);
    tree->SetBranchAddress("particleID",&particleID);
    tree->SetBranchAddress("prePosition.x",&rx);
    tree->SetBranchAddress("prePosition.y",&ry);
    tree->SetBranchAddress("prePosition.z",&rz);
    
    Long64_t nentries = tree->GetEntries();
    
    for(int i=0; i<nentries; i++)
    {
        tree->GetEntry(i);

        if(volumeID == 1 && amIdetected == false && particleID == 57)   //if it's a first detect in step and it's a alpha
        {   
            graph->SetPoint(graph->GetN(),rx,ry);
            count++;            
            amIdetected = true;    
        }   
        if(nowEventID!=eventID)
        {
            amIdetected = false;
            nowEventID = eventID;
        } 
    }
    

        //Drwaing Graph
        graph->SetMarkerColor(4);   //2(red) or 4(blue)
        graph->SetMarkerStyle(20);
        graph->SetMarkerSize(0.5);
        graph->SetTitle("no_target_plane;x(mm);y(mm)");
        TAxis *axis = graph->GetXaxis();
        axis->SetLimits(-15,15);
        graph->GetHistogram()->SetMaximum(7.5);
        graph->GetHistogram()->SetMinimum(-7.5);

        TString entryLine = "Incident : ";
        entryLine = entryLine + TString::Itoa(eventID+1,10);
        TString detectLine = "Detect : ";
        detectLine = detectLine + TString::Itoa(count,10);

        TLegend *legend = new TLegend(0.7,0.8,0.9,0.9);
        legend->AddEntry(graph,entryLine,"");
        legend->AddEntry(graph,detectLine,"");
        
        graph->Draw("ap");
        legend->Draw();
}