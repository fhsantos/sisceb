unit uInformacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Db, DBTables;

type
  TfrmGrades = class(TForm)
    Panel1: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    DsCursos: TDataSource;
    QySerie: TQuery;
    QyGrade: TQuery;
    DsGrade: TDataSource;
    QyGradeDisciplina: TStringField;
    QyGradeCodDisciplina: TIntegerField;
    QyGradeAno: TIntegerField;
    QyGradeSituacao: TStringField;
    QyGradeCargaHoraria: TFloatField;
    QyGradeCodNivel: TIntegerField;
    QyGradeSerie: TStringField;
    QyGradeNivel: TStringField;
    QyGradeCodSerie: TIntegerField;
    QySerieCodSerie: TIntegerField;
    QySerieCodNivel: TIntegerField;
    QySerieSerie: TStringField;
    QySerieNivel: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGrades: TfrmGrades;

implementation

uses uDtModule;

{$R *.DFM}

procedure TfrmGrades.BitBtn1Click(Sender: TObject);
begin

  close;
end;

procedure TfrmGrades.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 try
  dtModule.CodDisciplina:= QyGradeCodDisciplina.AsString;
  dtModule.CodSerie:= QyGradeCodSerie.AsString;
  dtModule.CodNivel:= QyGradeCodNivel.AsString;
  dtModule.Disciplina:= QyGradeDisciplina.AsString;
  dtModule.Serie:= QyGradeSerie.AsString;
  dtModule.Nivel:= QyGradeNivel.AsString;


  QySerie.close;
  QyGrade.close;
  Release;
  frmGrades:=nil;
 except
 end;
end;

procedure TfrmGrades.DBGrid1CellClick(Column: TColumn);
begin
try
    with QyGrade do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Grades');
      sql.add('where CodSerie = ' + QySerieCodSerie.AsString);
      sql.add('And CodNivel = ' + QySerieCodNivel.AsString);
      sql.add('order by Disciplina');
      open;
     end;
  except
   abort;
  end;
end;

end.
