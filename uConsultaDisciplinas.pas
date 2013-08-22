unit uConsultaDisciplinas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Buttons, Db, DBTables, StdCtrls;

type
  TfrmConsultaDisciplinas = class(TForm)
    Panel1: TPanel;
    Panel4: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    spSair: TSpeedButton;
    DsDisciplinas: TDataSource;
    QyDisciplinas: TQuery;
    QyDisciplinasCodDisciplina: TIntegerField;
    QyDisciplinasNome: TStringField;
    QyDisciplinasAbreviado: TStringField;
    Label1: TLabel;
    procedure spSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaDisciplinas: TfrmConsultaDisciplinas;

implementation

uses uDtModule;

{$R *.DFM}

procedure TfrmConsultaDisciplinas.spSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmConsultaDisciplinas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Dtmodule.CodDisciplina:= QyDisciplinasCodDisciplina.AsString;
   Dtmodule.Disciplina   := QyDisciplinasNome.AsString;
   QyDisciplinas.close;
   Release;
   frmConsultaDisciplinas:=nil;
end;

end.
