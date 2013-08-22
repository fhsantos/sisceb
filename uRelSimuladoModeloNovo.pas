unit uRelSimuladoModeloNovo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, jpeg, Qrctrls, Db, DBTables, StdCtrls;

type
  TFrmRelSimuladoModeloNovo = class(TForm)
    QuickRep1: TQuickRep;
    QyCandidatos: TQuery;
    DetailBand1: TQRBand;
    QRShape21: TQRShape;
    QRShape302: TQRShape;
    QRLabel242: TQRLabel;
    QRLabel245: TQRLabel;
    QRExpr1: TQRExpr;
    QRLabel270: TQRLabel;
    QRExpr2: TQRExpr;
    QRShape9: TQRShape;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel91: TQRLabel;
    QRLabel92: TQRLabel;
    QRLabel93: TQRLabel;
    QRLabel94: TQRLabel;
    QRLabel95: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel90: TQRLabel;
    QRExpr3: TQRExpr;
    QyCandidatosMatricula: TIntegerField;
    QyCandidatosCodDisciplina: TIntegerField;
    QyCandidatosAno: TIntegerField;
    QyCandidatosTurma: TStringField;
    QyCandidatosDisciplina: TStringField;
    QyCandidatosAluno: TStringField;
    QyCandidatosUnid1: TStringField;
    QyCandidatosUnid2: TStringField;
    QyCandidatosF1: TIntegerField;
    QyCandidatosF2: TIntegerField;
    QyCandidatosF3: TIntegerField;
    QyCandidatosSit: TStringField;
    QyCandidatosCargaHoraria: TFloatField;
    QyCandidatosCodSerie: TIntegerField;
    QyCandidatosSerie: TStringField;
    QyCandidatosNivel: TStringField;
    QyCandidatosUnid3: TStringField;
    QyCandidatosUnid4: TStringField;
    QyCandidatosPF: TStringField;
    QyCandidatosRF: TStringField;
    QyCandidatosSituacao: TStringField;
    QRLabel42: TQRLabel;
    QRLabel258: TQRLabel;
    QRLabel259: TQRLabel;
    QRLabel260: TQRLabel;
    QRShape318: TQRShape;
    QRLabel142: TQRLabel;
    QRShape23: TQRShape;
    QRLabel261: TQRLabel;
    QRLabel262: TQRLabel;
    QRLabel263: TQRLabel;
    QRLabel233: TQRLabel;
    QRLabel143: TQRLabel;
    QRShape24: TQRShape;
    QRLabel229: TQRLabel;
    QRLabel230: TQRLabel;
    QRShape22: TQRShape;
    QRShape25: TQRShape;
    QRLabel268: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel231: TQRLabel;
    QRLabel232: TQRLabel;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel266: TQRLabel;
    QRLabel267: TQRLabel;
    QRLabel271: TQRLabel;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRExpr4: TQRExpr;
    QRImage1: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    num,col:integer;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelSimuladoModeloNovo: TFrmRelSimuladoModeloNovo;

implementation
{$R *.DFM}

procedure TFrmRelSimuladoModeloNovo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 try
  QyCandidatos.close;
  Release;
  FrmRelSimuladoModeloNovo:=nil;
 except
 end;
end;


end.
