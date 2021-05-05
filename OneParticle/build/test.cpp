#include "TH1D.h"
#include "TF1.h"
#include "TRandom.h"
#include "TLegend.h"
void test()
{
    TRandom * r = new TRandom();
    r->SetSeed(time(0));
    
    TLegend *legend = new TLegend();

    TH1D * h1d = new TH1D("h1f", "h", 100, 10, -10);
    //h1d->FillRandom("gaus1");
    for(int i = 1;i<20;i++)
    {
        double a = r->Gaus(0,0.5);
        h1d->Fill(a);
    }
    h1d->Draw();
    h1d->Fit("gaus");
    TF1 * f = h1d->GetFunction("gaus");
    legend->AddEntry((TObject*)0,TString::Itoa(f->GetNDF(),10),"");
    legend->AddEntry((TObject*)0,TString::Itoa(f->GetChisquare(),10),"");
    legend->AddEntry((TObject*)0,TString::Itoa(f->GetProb(),10),"");
    legend->Draw();
    f->GetNDF();
    f->GetChisquare();
    f->GetProb();
}