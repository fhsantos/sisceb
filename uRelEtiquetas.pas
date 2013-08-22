unit uRelEtiquetas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, DB, DBTables;

type
  TfrmRelEtiquetas = class(TForm)
    QuickRep1: TQuickRep;
    DetailBand1: TQRBand;
    QyAlunos: TQuery;
    QyAlunosSerie: TStringField;
    QyAlunosMatricula: TIntegerField;
    QyAlunosCodSerie: TIntegerField;
    QyAlunosAno: TIntegerField;
    QyAlunosTurma: TStringField;
    QyAlunosSituacao: TStringField;
    QyAlunosDt_Matricula: TDateTimeField;
    QyAlunosNome: TStringField;
    QyAlunosNivel: TStringField;
    QyAlunosCodNivel: TIntegerField;
    QyAlunosCI: TStringField;
    QyAlunosPai: TStringField;
    QyAlunosMae: TStringField;
    QyAlunosDt_Nasc: TDateTimeField;
    QyAlunosCPF: TStringField;
    QyAlunosEndereco: TStringField;
    QyAlunosBairro: TStringField;
    QyAlunosCidade: TStringField;
    QyAlunosEstado: TStringField;
    QyAlunosTel: TStringField;
    QyAlunosCpfResponsavel: TStringField;
    QyAlunosResponsavel: TStringField;
    QyAlunosCiResponsavel: TStringField;
    QyAlunosFoneResponsavel: TStringField;
    QyAlunosFoto: TStringField;
    QyAlunosImprimir: TStringField;
    QRExpr1: TQRExpr;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRExpr2: TQRExpr;
    QRLabel4: TQRLabel;
    QRExpr3: TQRExpr;
    QRLabel5: TQRLabel;
    QRExpr4: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelEtiquetas: TfrmRelEtiquetas;

implementation

uses uDtModule;

{$R *.dfm}

end.
