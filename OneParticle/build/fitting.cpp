#include "TFile.h"
#include "TTree.h"
#include "TGraph.h"
#include "TH1F.h"
#include "TLegend.h"
#include "TCanvas.h"
#include "TF1.h"
#include "TFitResultPtr.h"
void fitting()
{
    TFile *file = new TFile("../../data/OnlyA.root", "read");
    TTree *tree = (TTree*) file -> Get("step");
    TGraph *graph = new TGraph();
    TH1D *hist = new TH1D("X","A;x_position",100,-15,15);
    TLegend* legend = new TLegend();

    Int_t eventID, volumeID, particleID;
    double_t rx,ry,rz;
    int count=1, nowEventID=0;
    bool amIdetected = false;
    double_t centerX = -5;

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
            graph->SetPoint(graph->GetN(),(rx-centerX),ry);
            hist->Fill((rx-centerX));
            count++;            
            amIdetected = true;    
        }   
        if(nowEventID!=eventID)
        {
            amIdetected = false;
            nowEventID = eventID;
        } 
    }   
    TF1 *gaus = new TF1("gs", "gaus", -15.0, 15.0);
    TCanvas *c1 = new TCanvas("c1");
    c1->SetLogy();
    c1->Draw();
    hist->Fit("gs");
    TF1 *fitResult = hist->GetFunction("gs");
    double chi2 = fitResult->GetChisquare();
    double ndf = fitResult->GetNDF();
    hist->Draw();
    TString a = Form("%f",chi2);
    legend->AddEntry((TObject*)0,a,"");
    legend->AddEntry((TObject*)0,TString::Itoa(ndf,10),"");
    legend->Draw();
}