unit uRelMatriculados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, jpeg;

type
  TfrmRelMatriculados = class(TForm)
    QyCurso: TQuery;
    QyAlunos: TQuery;
    DsCurso: TDataSource;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRExpr21: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr5: TQRExpr;
    QRShape1: TQRShape;
    ChildBand1: TQRChildBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape9: TQRShape;
    QyCursoCodSerie: TIntegerField;
    QyCursoCodNivel: TIntegerField;
    QyCursoSerie: TStringField;
    QyCursoNivel: TStringField;
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
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    ColumnHeaderBand1: TQRBand;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel23: TQRLabel;
    QRExpr15: TQRExpr;
    QRLabel24: TQRLabel;
    QRExpr18: TQRExpr;
    QRLabel26: TQRLabel;
    QRExpr20: TQRExpr;
    QRLabel1: TQRLabel;
    QRExpr11: TQRExpr;
    QRShape16: TQRShape;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRExpr3: TQRExpr;
    QyAlunosCI: TStringField;
    QRImage1: TQRImage;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMatriculados: TfrmRelMatriculados;

implementation


{$R *.DFM}

procedure TfrmRelMatriculados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 QyCurso.close;
 QyAlunos.close;
 Release;
 frmRelMatriculados:= nil;
end;

END.
