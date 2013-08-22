unit uConsulta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Db, DBTables, Buttons;

type
  TfrmConsulta = class(TForm)
    Panel1: TPanel;
    rdgConsulta: TRadioGroup;
    edConsultar: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    QyAlunos: TQuery;
    QyAlunosNome: TStringField;
    QyAlunosSexo: TStringField;
    QyAlunosPai: TStringField;
    QyAlunosMae: TStringField;
    QyAlunosDt_Nasc: TDateTimeField;
    QyAlunosDt_Cadastro: TDateTimeField;
    QyAlunosEndereco: TStringField;
    QyAlunosBairro: TStringField;
    QyAlunosCidade: TStringField;
    QyAlunosEstado: TStringField;
    QyAlunosComplemento: TStringField;
    QyAlunosTel: TStringField;
    QyAlunosCelular: TStringField;
    QyAlunosCPF: TStringField;
    QyAlunosCI: TStringField;
    QyAlunosemail: TStringField;
    QyAlunosObs: TStringField;
    QyAlunosDesconto: TFloatField;
    QyAlunosBolsista: TStringField;
    QyAlunosMatricula: TIntegerField;
    QyAlunosCEP: TStringField;
    dsAlunos: TDataSource;
    SpeedButton1: TSpeedButton;
    procedure edConsultarChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;

implementation

uses uDtModule;

{$R *.DFM}

procedure TfrmConsulta.edConsultarChange(Sender: TObject);
begin
  try
    with QyAlunos do
     begin
      close;
      sql.clear;
      sql.add('select * from Tb_Alunos');
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

procedure TfrmConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtModule.Matricula:= QyAlunosMatricula.AsString;
  dtModule.Nome     := QyAlunosNome.AsString;

  QyAlunos.close;
  Release;
  frmConsulta:=nil;
end;

procedure TfrmConsulta.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

end.
