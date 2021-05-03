#include "TFile.h"
#include "TTree.h"
#include "TGraph.h"
#include "TH1F.h"
#include "TLegend.h"
#include "TMultiGraph.h"
#include "TCanvas.h"

void ReadAll()
{
    TFile *file = new TFile("TwoParticles.root", "read");
    TTree *tree = (TTree*) file -> Get("step");
    TGraph *graph1 = new TGraph(); 
    TGraph *graph2 = new TGraph(); 
    TMultiGraph *m1 = new TMultiGraph();    
    TCanvas *cvs = new TCanvas("cvs", "TwoParticles",800,650);

    Int_t eventID, volumeID, particleID;
    double_t rx,ry,rz;
    double_t tempx,tempy,tempz; //remember location of detected A
    int count=0, nowEventID=0;
    bool amIA=false, amIB=false, detectA=false, detectB=false;

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
        //tree->Show();
        if(nowEventID!=eventID) //when event ends
        {
                nowEventID = eventID;
                amIA=false;
                amIB=false;
                detectA=false;
                detectB=false;
        }

        if(rx==5 && ry==0 && rz==-5) {  amIA=true; amIB=false;  }   //to identify A
        if(rx==-5 && ry==0 && rz==-5) {  amIA=false; amIB=true;  }  //to identify B

        if(volumeID == 1 && amIA == true && detectA == false && particleID == 57)  //to identify detected A
        {           
            //graph1->SetMarkerColor(2);
            graph1->SetMarkerColorAlpha(2,0.5);
            graph1->SetPoint(graph1->GetN(),rx,ry);
            detectA = true;
            count++;
        }
        if(volumeID == 1 && amIB == true && detectB == false && particleID == 57)  //to identify detected A
        {

            //graph2->SetMarkerColor(4);
            graph2->SetMarkerColorAlpha(4,0.5);
            graph2->SetPoint(graph2->GetN(),rx,ry);
            detectB = true;
            count++;
        }      
    }

        //Drwaing Graph
        graph1->SetMarkerStyle(20);
        graph1->SetMarkerSize(0.5);
        graph2->SetMarkerStyle(20);
        graph2->SetMarkerSize(0.5);
        m1->SetTitle("TwoParticle;x(mm);y(mm)");
        // TAxis *axis = graph1->GetXaxis();
        // axis->SetLimits(-15,15);
        

        TString entryLine = "Incident : ";
        entryLine = entryLine + TString::Itoa(2*(eventID+1),10);
        TString detectLine = "Detect : ";
        detectLine = detectLine + TString::Itoa(count,10);

        TLegend *legend = new TLegend(0.7,0.8,0.9,0.9);
        legend->AddEntry(graph1,entryLine,"");
        legend->AddEntry(graph1,detectLine,"");
        
        cvs->cd();
        m1->Add(graph1);
        m1->Add(graph2);
        m1->Draw("ap");        
        m1->GetXaxis()->SetLimits(-15,15);
        m1->SetMaximum(7.5);
        m1->SetMinimum(-7.5);
        legend->Draw();
        cvs->SaveAs("helloworld");
}