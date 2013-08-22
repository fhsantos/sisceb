unit uRelMatricula;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, jpeg;

type
  TfrmRelMatricula = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel3: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QyMaster: TQuery;
    QyDetalhe: TQuery;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr11: TQRExpr;
    DsMaster: TDataSource;
    qyparametros: TQuery;
    QRShape39: TQRShape;
    QRShape41: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QyMasterMatricula: TIntegerField;
    QyMasterAno: TIntegerField;
    QyMasterTurma: TStringField;
    QyMasterSituacao: TStringField;
    QyMasterDt_Matricula: TDateTimeField;
    QyDetalheMatricula: TIntegerField;
    QyDetalheCodDisciplina: TIntegerField;
    QyDetalheAno: TIntegerField;
    QyDetalheTurma: TStringField;
    QyDetalheDisciplina: TStringField;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QyDetalheAluno: TStringField;
    QyDetalheUnid1: TStringField;
    QyDetalheUnid2: TStringField;
    QyDetalheF1: TIntegerField;
    QyDetalheF2: TIntegerField;
    QyDetalheF3: TIntegerField;
    QyDetalheSit: TStringField;
    QyDetalheRec: TStringField;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRExpr5: TQRExpr;
    QRLabel12: TQRLabel;
    QyDetalheCargaHoraria: TFloatField;
    SummaryBand2: TQRBand;
    QRExpr9: TQRExpr;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRExpr10: TQRExpr;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QyDetalheCodSerie: TIntegerField;
    QyDetalheSerie: TStringField;
    QyDetalheNivel: TStringField;
    QyDetalheUnid3: TStringField;
    QyDetalheUnid4: TStringField;
    QyMasterSerie: TStringField;
    QyMasterCodSerie: TIntegerField;
    QyMasterNome: TStringField;
    QyMasterNivel: TStringField;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRImage1: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel29: TQRLabel;
    qyparametrosRazao: TStringField;
    qyparametrosCNPJ: TStringField;
    qyparametrosEndereco: TStringField;
    qyparametrosTel: TStringField;
    qyparametrosFax: TStringField;
    qyparametrosAno: TIntegerField;
    qyparametrosDigito: TIntegerField;
    qyparametrosDigitoProvao: TIntegerField;
    qyparametrosMedia: TFloatField;
    qyparametrosMediaEja: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMatricula: TfrmRelMatricula;

implementation


{$R *.DFM}

procedure TfrmRelMatricula.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 qyMaster.close;
 qyDetalhe.close;
 Release;
 frmRelMatricula:= nil;
//frmRel_Boletim:= NIL;
end;

procedure TfrmRelMatricula.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR Mes:Integer;
BEGIN
    Mes:= strtoint(FormatDateTime('mm',date));
//    qrData.Caption:= 'Aracaju,' + '  ' + FormatDateTime('dd',Date) + '  ' + 'de' + '  ' + FrmPrincipal.MesReferencia(Mes) + '  ' + FormatDateTime('yyyy',Date) + '.';
END;
procedure TfrmRelMatricula.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR Mes:Integer;
BEGIN
    Mes:= strtoint(FormatDateTime('mm',date));
//    QRMES.Caption:= FrmPrincipal.MesReferencia(Mes);
END;

END.
