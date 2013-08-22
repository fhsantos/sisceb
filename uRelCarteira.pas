unit uRelCarteira;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, ExtCtrls, Db, DBTables, jpeg;

type
  TfrmRelCarteira = class(TForm)
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QyCarne: TQuery;
    QRExpr1: TQRExpr;
    DsCarne: TDataSource;
    QRExpr3: TQRExpr;
    QRShape2: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel1: TQRLabel;
    QRExpr2: TQRExpr;
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
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QyCarneFoto: TStringField;
    QRShape5: TQRShape;
    QyCarneImprimir: TStringField;
    QRImage2: TQRImage;
    QyCarneFot: TStringField;
    QRImage1: TQRImage;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QyCarneCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCarteira: TfrmRelCarteira;

implementation


{$R *.DFM}

procedure TfrmRelCarteira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 try
  QyCarne.close;

  Release;
  frmRelCarteira := nil;
 except
 end;
end;

procedure TfrmRelCarteira.QyCarneCalcFields(DataSet: TDataSet);
begin
  try
    QRImage2.Picture.LoadFromFile(QyCarneFoto.AsString);
  except

  end;

end;

end.
