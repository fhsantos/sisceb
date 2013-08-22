unit uRelAlunos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, jpeg, StdCtrls;

type
  TfrmRelAlunos = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QyMaster: TQuery;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRShape3: TQRShape;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRExpr10: TQRExpr;
    QyMasterMatricula: TIntegerField;
    QyMasterNome: TStringField;
    QyMasterPai: TStringField;
    QyMasterMae: TStringField;
    QyMasterDt_Nasc: TDateTimeField;
    QyMasterDt_Cadastro: TDateTimeField;
    QyMasterBairro: TStringField;
    QyMasterEndereco: TStringField;
    QyMasterCEP: TStringField;
    QyMasterTel: TStringField;
    QyMasterCI: TStringField;
    QyMasterCPF: TStringField;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRImage1: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel30: TQRLabel;
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
  frmRelAlunos: TfrmRelAlunos;

implementation

{$R *.DFM}

procedure TfrmRelAlunos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 qyMaster.close;
 Release;
 frmRelAlunos:= nil;
//frmRel_Boletim:= NIL;
end;

procedure TfrmRelAlunos.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR Mes:Integer;
BEGIN
    Mes:= strtoint(FormatDateTime('mm',date));
//    qrData.Caption:= 'Aracaju,' + '  ' + FormatDateTime('dd',Date) + '  ' + 'de' + '  ' + FrmPrincipal.MesReferencia(Mes) + '  ' + FormatDateTime('yyyy',Date) + '.';
END;
procedure TfrmRelAlunos.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR Mes:Integer;
BEGIN
    Mes:= strtoint(FormatDateTime('mm',date));
//    QRMES.Caption:= FrmPrincipal.MesReferencia(Mes);
END;

END.
