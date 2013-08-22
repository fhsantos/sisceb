unit uConsultaMatricula;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Db, DBTables, Buttons, ActnList;

type
  TfrmConsultaMatricula = class(TForm)
    Panel1: TPanel;
    rdgConsulta: TRadioGroup;
    edConsultar: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    QyAlunos: TQuery;
    dsAlunos: TDataSource;
    SpeedButton1: TSpeedButton;
    QyAlunosMatricula: TIntegerField;
    QyAlunosAno: TIntegerField;
    QyAlunosTurma: TStringField;
    QyAlunosSituacao: TStringField;
    QyAlunosDt_Matricula: TDateTimeField;
    ActionList1: TActionList;
    Consultar: TAction;
    QyAlunosSerie: TStringField;
    QyAlunosCodSerie: TIntegerField;
    QyAlunosNome: TStringField;
    QyAlunosNivel: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ConsultarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaMatricula: TfrmConsultaMatricula;

implementation

uses uDtModule;

{$R *.DFM}

procedure TfrmConsultaMatricula.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtModule.Matricula:= QyAlunosMatricula.AsString;
  dtModule.Nome     := QyAlunosNome.AsString;
  dtModule.CodSerie := QyAlunosCodSerie.AsString;
  dtModule.Ano      := QyAlunosAno.AsString;
  dtModule.Serie    := QyAlunosSerie.AsString;
  dtModule.Turma    := QyAlunosTurma.AsString;
  dtModule.Situacao := QyAlunosSituacao.AsString;
  dtModule.Nivel:= QyAlunosNivel.AsString;

  QyAlunos.close;
  Release;
  frmConsultaMatricula:=nil;
end;

procedure TfrmConsultaMatricula.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmConsultaMatricula.ConsultarExecute(Sender: TObject);
begin
  try
    with QyAlunos do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_AlunosMatricula');
      if rdgConsulta.ItemIndex = 0 then
      sql.add('where Nome like ' + ''''+edConsultar.Text+'%'+'''')

      else if rdgConsulta.ItemIndex = 1 then
      sql.add('where Matricula like ' + ''''+edConsultar.Text+'%'+'''');

      sql.add('order by Nome');
      open;
     end;
  except

  end;


end;

end.
