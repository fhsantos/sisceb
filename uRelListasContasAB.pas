unit uRelListasContasAB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, jpeg, Qrctrls, Db, DBTables;

type
  TFrmRelListasContasPG = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    DetailBand1: TQRBand;
    DsListaContas: TDataSource;
    QyListaContas: TQuery;
    QRShape1: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRShape2: TQRShape;
    SummaryBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRExpr5: TQRExpr;
    QyListaContasCodMov: TIntegerField;
    QyListaContasCodDescricao: TIntegerField;
    QyListaContasDtPagto: TDateTimeField;
    QyListaContasValor: TFloatField;
    QyListaContasObs: TStringField;
    QyListaContasSituacao: TStringField;
    QyListaContasConta: TStringField;
    QyListaContasTipo: TStringField;
    QyListaContasVlEntrada: TFloatField;
    QyListaContasVlSaida: TFloatField;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRLabel3: TQRLabel;
    QRExpr6: TQRExpr;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel10: TQRLabel;
    QRExpr7: TQRExpr;
    lblperiodo: TQRLabel;
    QRImage1: TQRImage;
    QRLabel24: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel2: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QyListaContasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelListasContasPG: TFrmRelListasContasPG;

implementation

{$R *.DFM}

procedure TFrmRelListasContasPG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QyListaContas.close;
  Release;
  FrmRelListasContasPG:=nil;
end;

procedure TFrmRelListasContasPG.QyListaContasCalcFields(DataSet: TDataSet);
begin
  try
    if QyListaContasTipo.AsString = 'C' then
     QyListaContasVlEntrada.AsFloat:= QyListaContasValor.AsFloat;

    if QyListaContasTipo.AsString = 'D' then
     QyListaContasVlSaida.AsFloat:= QyListaContasValor.AsFloat;
  except

  end;

end;

end.
