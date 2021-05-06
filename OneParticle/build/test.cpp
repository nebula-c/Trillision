#include "TH1D.h"
#include "TF1.h"
#include "TRandom.h"
#include "TLegend.h"
#include "TCanvas.h"
void test()
{
    TRandom * r = new TRandom();
    r->SetSeed(time(0));
    
    TLegend *legend = new TLegend();
    TH1D * h1d = new TH1D("h1f", "h", 100, 10, -10);

    for(int i = 1;i<1000;i++)
    {
        double a = r->Gaus(0,0.5);
        h1d->Fill(a);
    }
    TCanvas *c1 = new TCanvas("c1");
    c1->SetLogy();
    c1->Draw();
    h1d->Draw();
    h1d->Fit("gaus");
    TF1 * f = h1d->GetFunction("gaus");
    double_t ndf = f->GetNDF();
    double_t chi2 = f->GetChisquare();
    TString chi2_ndf = Form("chi2/ndf : %f",chi2/ndf);
    legend->AddEntry((TObject*)0,TString::Itoa(ndf,10),"");
    legend->AddEntry((TObject*)0,TString::Itoa(chi2,10),"");
    legend->AddEntry((TObject*)0,chi2_ndf,"");
    legend->Draw();
}