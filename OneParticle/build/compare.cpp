#include "TFile.h"
#include "TTree.h"
#include "TGraph.h"
#include "TH1F.h"
#include "TLegend.h"
#include "TCanvas.h"

typedef struct eventInfo{
        Int_t eventID, volumeID, particleID;
        double_t rx,ry,rz;    
        Long64_t nentries;
        int count=0, nowEventID=0;
        bool amIdetected = false;
        TTree *tree;
        TH1D *hist;
    } eventInfo;

void makehist(eventInfo *event);

void compare()
{
    eventInfo plane;
    eventInfo nt;
    plane.hist = new TH1D("plane","compare;x_position",100,-15,15);
    nt.hist = new TH1D("nt","compare;x_position",100,-15,15);
    TGraph *g1 = new TGraph();
    TH1F *hist = new TH1F("sub","compare;x_position",100,-15,15);

    TCanvas *c1 = new TCanvas("c1","compare",800,650);
    TLegend* legend = new TLegend();


    TFile *file_plane = new TFile("plane.root", "read");
    plane.tree = (TTree*) file_plane -> Get("step");

    TFile *file_nt = new TFile("no_target_plane.root", "read");
    nt.tree = (TTree*) file_nt -> Get("step");
    

    plane.tree->SetBranchAddress("eventID",&plane.eventID);
    plane.tree->SetBranchAddress("volumeID",&plane.volumeID);
    plane.tree->SetBranchAddress("particleID",&plane.particleID);
    plane.tree->SetBranchAddress("prePosition.x",&plane.rx);
    plane.tree->SetBranchAddress("prePosition.y",&plane.ry);
    plane.tree->SetBranchAddress("prePosition.z",&plane.rz);

    nt.tree->SetBranchAddress("eventID",&nt.eventID);
    nt.tree->SetBranchAddress("volumeID",&nt.volumeID);
    nt.tree->SetBranchAddress("particleID",&nt.particleID);
    nt.tree->SetBranchAddress("prePosition.x",&nt.rx);
    nt.tree->SetBranchAddress("prePosition.y",&nt.ry);
    nt.tree->SetBranchAddress("prePosition.z",&nt.rz);
    
    plane.nentries = plane.tree->GetEntries();
    nt.nentries = nt.tree->GetEntries();

    makehist(&plane);
    makehist(&nt);

    std::cout << "done" << std::endl;

    int j =0;
    for(int i=0;i<100;i++)
    {
        //g1->SetPoint(j,i,plane.hist->GetBinContent(i)-5);
        if(5<plane.hist->GetBinContent(i))
        hist->Fill(i,plane.hist->GetBinContent(i)-5);
        //std::cout<<plane.hist->GetBinContent(i)<<std::endl;
    }
    
    c1->Draw();
    hist->SetLineColor(1);
    hist->Draw();
    plane.hist->SetLineColor(2);
    plane.hist->Draw("SAME");
    nt.hist->SetLineColor(4);
    nt.hist->Draw("SAME");
    

    legend->AddEntry(plane.hist,"plane","l");
    legend->AddEntry(nt.hist,"no target","l");
    legend->AddEntry(g1,"sub","l");

    legend->Draw();
}


void makehist(eventInfo *event)
{
    for(int i=0; i<event->nentries; i++)
    {
        event->tree->GetEntry(i);

        if(event->volumeID == 1 && event->amIdetected == false && event->particleID == 57)   //if it's a first detect in step and it's a alpha
        {   
            event->hist->Fill(event->rx);
            event->count++;            
            event->amIdetected = true;
        }
        if(event->nowEventID!=event->eventID)
        {
            event->amIdetected = false;
            event->nowEventID = event->eventID;
        }
    }
}