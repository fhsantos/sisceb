unit uRelMatriculadosDisciplinas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, jpeg;

type
  TfrmRelMatriculadosDisciplinas = class(TForm)
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
    QyAlunosCI: TStringField;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRImage1: TQRImage;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel17: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelMatriculadosDisciplinas: TfrmRelMatriculadosDisciplinas;

implementation

{$R *.DFM}

procedure TfrmRelMatriculadosDisciplinas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 QyCurso.close;
 QyAlunos.close;
 Release;
 frmRelMatriculadosDisciplinas:= nil;
end;

END.
