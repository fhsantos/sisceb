unit uRelAlunosMatriculados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, jpeg, Qrctrls, Db, DBTables;

type
  TfrmRelAlunosMatriculados = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QyMaster: TQuery;
    DsMaster: TDataSource;
    DetailBand1: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr11: TQRExpr;
    QRShape6: TQRShape;
    QRLabel11: TQRLabel;
    QyMasterSerie: TStringField;
    QyMasterMatricula: TIntegerField;
    QyMasterCodSerie: TIntegerField;
    QyMasterAno: TIntegerField;
    QyMasterTurma: TStringField;
    QyMasterSituacao: TStringField;
    QyMasterDt_Matricula: TDateTimeField;
    QyMasterNome: TStringField;
    QyMasterNivel: TStringField;
    QyMasterCodNivel: TIntegerField;
    QyMasterCI: TStringField;
    QyMasterPai: TStringField;
    QyMasterMae: TStringField;
    QyMasterDt_Nasc: TDateTimeField;
    QyMasterCPF: TStringField;
    QyMasterFoto: TStringField;
    QyMasterImprimir: TStringField;
    QRExpr2: TQRExpr;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRLabel2: TQRLabel;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    SummaryBand1: TQRBand;
    QRExpr4: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRImage1: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAlunosMatriculados: TfrmRelAlunosMatriculados;

implementation

{$R *.DFM}

procedure TfrmRelAlunosMatriculados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qymaster.close;
  Release;
  frmRelAlunosMatriculados := nil;
end;

end.
