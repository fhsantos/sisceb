unit ureldiarioclasse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, jpeg, Qrctrls, Db, DBTables;

type
  TfrmRelDiarioClasse = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QyMaster: TQuery;
    DsMaster: TDataSource;
    QyDetalhe: TQuery;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRExpr6: TQRExpr;
    QRShape2: TQRShape;
    QRLabel7: TQRLabel;
    QRExpr7: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr11: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape45: TQRShape;
    SummaryBand1: TQRBand;
    QRShape86: TQRShape;
    QRLabel53: TQRLabel;
    QyMasterCodDisciplina: TIntegerField;
    QyMasterAno: TIntegerField;
    QyMasterTurma: TStringField;
    QyMasterDisciplina: TStringField;
    QyDetalheMatricula: TIntegerField;
    QyDetalheCodDisciplina: TIntegerField;
    QyDetalheAno: TIntegerField;
    QyDetalheTurma: TStringField;
    QyDetalheDisciplina: TStringField;
    QyDetalheAluno: TStringField;
    QRShape6: TQRShape;
    QRLabel11: TQRLabel;
    QRShape5: TQRShape;
    QRLabel55: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape20: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape3: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape58: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape61: TQRShape;
    QyMasterCodSerie: TIntegerField;
    QyMasterSerie: TStringField;
    QyMasterNivel: TStringField;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
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
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape64: TQRShape;
    QRShape65: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QyDetalheCodSerie: TIntegerField;
    QyDetalheSerie: TStringField;
    QyDetalheNivel: TStringField;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRShape68: TQRShape;
    QRShape69: TQRShape;
    QRLabel41: TQRLabel;
    qrMes: TQRLabel;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRLabel42: TQRLabel;
    QRShape1: TQRShape;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QRLabel43: TQRLabel;
    QRShape79: TQRShape;
    QRShape80: TQRShape;
    QRShape81: TQRShape;
    QRShape82: TQRShape;
    QRShape83: TQRShape;
    QRShape84: TQRShape;
    QRShape85: TQRShape;
    QRShape87: TQRShape;
    QRLabel44: TQRLabel;
    QRShape88: TQRShape;
    QRLabel45: TQRLabel;
    QRShape89: TQRShape;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    QRShape90: TQRShape;
    QRShape91: TQRShape;
    QRLabel25: TQRLabel;
    QRShape92: TQRShape;
    QRShape93: TQRShape;
    QRShape94: TQRShape;
    QRShape95: TQRShape;
    QRShape96: TQRShape;
    QRShape97: TQRShape;
    QRShape98: TQRShape;
    QRShape99: TQRShape;
    QRShape100: TQRShape;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRImage1: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelDiarioClasse: TfrmRelDiarioClasse;

implementation

{$R *.DFM}

procedure TfrmRelDiarioClasse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qymaster.close;
  qydetalhe.close;
  Release;
  frmreldiarioclasse := nil;
end;

end.
