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
    TFile *file = new TFile("plane.root", "read");
    //TFile *file = new TFile("Straight.root", "read");
    TTree *tree = (TTree*) file -> Get("step");
    TGraph *graph = new TGraph();
    TH1D *hist = new TH1D("X","no target ;x_position",100,-15,15);
    TLegend* legend = new TLegend();

    Int_t eventID, volumeID, particleID;
    double_t rx,ry,rz;
    int count=1, nowEventID=0;
    bool amIdetected = false;
    double_t centerX = 0;       //for transition, but it's Unnecessary, maybe

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
            //graph->SetPoint(graph->GetN(),(rx-centerX),ry);
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
    TCanvas *c1 = new TCanvas("c1");
    //c1->SetLogy();
    c1->Draw();

    TF1 *gaus = new TF1("gs", "gaus", -15.0, 15.0);
    TF1 *func = new TF1("func", "[0]*cos([1]*x+[2])", -10, 10);
    hist->Fit("func","","",-10,10);
    hist->Draw();

    TF1 *fitResult = hist->GetFunction("func");
    double_t chi2 = fitResult->GetChisquare();
    double_t ndf = fitResult->GetNDF();
    
    TString chi2_ndf = Form("chi2/ndf : %f",chi2/ndf);
    TString f = Form("[p0]*cos([p1]*x+[p2])");
    TString p0 = Form("p0 : %f",hist->GetFunction("func")->GetParameter(0));
    TString p1 = Form("p1 : %f",hist->GetFunction("func")->GetParameter(1));
    TString p2 = Form("p2 : %f",hist->GetFunction("func")->GetParameter(2));
    
    legend->AddEntry((TObject*)0,f,"");
    legend->AddEntry((TObject*)0,p0,"");
    legend->AddEntry((TObject*)0,p1,"");
    legend->AddEntry((TObject*)0,p2,"");
    legend->AddEntry((TObject*)0,chi2_ndf,"");
    legend->Draw();
}