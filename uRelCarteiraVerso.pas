unit uRelCarteiraVerso;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, jpeg;

type
  TfrmRelCarteiraVerso = class(TForm)
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QyCarne: TQuery;
    DsCarne: TDataSource;
    QRLabel3: TQRLabel;
    QyCarneSerie: TStringField;
    QyCarneMatricula: TIntegerField;
    QyCarneCodSerie: TIntegerField;
    QyCarneAno: TIntegerField;
    QyCarneTurma: TStringField;
    QyCarneSituacao: TStringField;
    QyCarneDt_Matricula: TDateTimeField;
    QyCarneNome: TStringField;
    QyCarneNivel: TStringField;
    QyCarneCodNivel: TIntegerField;
    QyCarneCI: TStringField;
    QyCarnePai: TStringField;
    QyCarneMae: TStringField;
    QyCarneDt_Nasc: TDateTimeField;
    QyCarneCPF: TStringField;
    QyCarneFoto: TStringField;
    QRShape5: TQRShape;
    QyCarneImprimir: TStringField;
    QyCarneFot: TStringField;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QyCarneCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCarteiraVerso: TfrmRelCarteiraVerso;

implementation


{$R *.DFM}

procedure TfrmRelCarteiraVerso.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QyCarne.close;

  Release;
  frmRelCarteiraVerso := nil;
end;

procedure TfrmRelCarteiraVerso.QyCarneCalcFields(DataSet: TDataSet);
begin
  try
  except

  end;

end;

end.
