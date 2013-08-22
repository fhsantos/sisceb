unit uRelCarne;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables;

type
  TfrmRelCarne = class(TForm)
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QyCarne: TQuery;
    QRExpr1: TQRExpr;
    QyTurma: TQuery;
    DsCarne: TDataSource;
    QRDBText4: TQRDBText;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QyCarneMatricula: TIntegerField;
    QyCarneParcela: TIntegerField;
    QyCarneAno: TIntegerField;
    QyCarneDt_venc: TDateTimeField;
    QyCarneDt_pagto: TDateTimeField;
    QyCarneValor: TFloatField;
    QyCarneSituacao: TStringField;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel10: TQRLabel;
    QRShape9: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QyCarneCodForma: TIntegerField;
    QyCarneSerie: TStringField;
    QyCarneNome: TStringField;
    QyCarneCodSerie: TIntegerField;
    QyCarneNivel: TStringField;
    QRExpr2: TQRExpr;
    QRLabel16: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape12: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel20: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCarne: TfrmRelCarne;

implementation


{$R *.DFM}

procedure TfrmRelCarne.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QyCarne.close;
  QyTurma.close;

  Release;
  frmRelCarne := nil;
end;

end.
