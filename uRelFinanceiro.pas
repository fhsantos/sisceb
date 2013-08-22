unit uRelFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, jpeg;

type
  TfrmRelFinanceiro = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRSysData1: TQRSysData;
    DetailBand1: TQRBand;
    DsFinanceiro: TDataSource;
    QyFinanceiro: TQuery;
    QyFinanceiroMatricula: TIntegerField;
    QyFinanceiroParcela: TIntegerField;
    QyFinanceiroAno: TIntegerField;
    QyFinanceiroDt_venc: TDateTimeField;
    QyFinanceiroDt_pagto: TDateTimeField;
    QyFinanceiroValor: TFloatField;
    QyFinanceiroSituacao: TStringField;
    QyFinanceiroAluno: TStringField;
    QyFinanceiroCodForma: TIntegerField;
    QyFinanceiroFormaPagto: TStringField;
    QRShape1: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    SummaryBand1: TQRBand;
    QRShape2: TQRShape;
    QRExpr6: TQRExpr;
    QRLabel8: TQRLabel;
    qrPeriodo: TQRLabel;
    QyFinanceiroCodSerie: TIntegerField;
    QyFinanceiroSerie: TStringField;
    QRExpr7: TQRExpr;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRExpr8: TQRExpr;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRExpr1: TQRExpr;
    QyFinanceiroTurma: TStringField;
    QRExpr5: TQRExpr;
    QyFinanceiroStatus: TStringField;
    QyFinanceiroNivel: TStringField;
    QRLabel2: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRImage1: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelFinanceiro: TfrmRelFinanceiro;

implementation

{$R *.DFM}

procedure TfrmRelFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QyFinanceiro.close;
  Release;
  frmRelFinanceiro:= nil;
end;

end.
