unit uDisciplinas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, Db, DBTables, Mask, DBCtrls,
  DBActns, ActnList;

type
  TfrmDisciplinas = class(TForm)
    Panel1: TPanel;
    Label21: TLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    spNovo: TSpeedButton;
    spExcluir: TSpeedButton;
    spSalvar: TSpeedButton;
    spAlterar: TSpeedButton;
    DBGrid1: TDBGrid;
    DsDisciplinas: TDataSource;
    QyDisciplinas: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    spFechar: TSpeedButton;
    spConsultar: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    ActionList1: TActionList;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    upDisciplinas: TUpdateSQL;
    QyDisciplinasCodDisciplina: TIntegerField;
    QyDisciplinasNome: TStringField;
    QyDisciplinasAbreviado: TStringField;
    edConsulta: TEdit;
    Label3: TLabel;
    Consultar: TAction;
    QyDisciplinasCargaHoraria: TFloatField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spFecharClick(Sender: TObject);
    procedure QyDisciplinasAfterCancel(DataSet: TDataSet);
    procedure QyDisciplinasAfterDelete(DataSet: TDataSet);
    procedure QyDisciplinasAfterPost(DataSet: TDataSet);
    procedure QyDisciplinasNewRecord(DataSet: TDataSet);
    procedure ConsultarExecute(Sender: TObject);
    procedure QyDisciplinasBeforeDelete(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
 
  public
    { Public declarations }
  end;

var
  frmDisciplinas: TfrmDisciplinas;

implementation

uses uDtModule;



{$R *.DFM}

procedure TfrmDisciplinas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   QyDisciplinas.close;
   Release;
   frmDisciplinas:=nil;
end;

procedure TfrmDisciplinas.spFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDisciplinas.QyDisciplinasAfterCancel(DataSet: TDataSet);
begin
  try
    QyDisciplinas.CancelUpdates;
  except
   abort;

  end;

end;

procedure TfrmDisciplinas.QyDisciplinasAfterDelete(DataSet: TDataSet);
begin
  try
    QyDisciplinas.ApplyUpdates;
    QyDisciplinas.CommitUpdates;
  except
   abort;

  end;

end;

procedure TfrmDisciplinas.QyDisciplinasAfterPost(DataSet: TDataSet);
begin
  try
    QyDisciplinas.ApplyUpdates;
    QyDisciplinas.CommitUpdates;
  except
   abort;

  end;

end;

procedure TfrmDisciplinas.QyDisciplinasNewRecord(DataSet: TDataSet);
 var
  cod:string;
begin
  try
    with dtModule.QySql do
     begin
      close;
      sql.clear;
      sql.add('select max(CodDisciplina) as maior from Tb_Disciplinas');
      open;

      cod:= IntToStr(dtModule.QySql.fieldByName('maior').AsInteger+1);
      close;

      QyDisciplinasCodDisciplina.AsString:=cod;

     end;
  except

  end;

end;

procedure TfrmDisciplinas.ConsultarExecute(Sender: TObject);
begin
  try
    with QyDisciplinas do
     begin
      close;
      sql.clear;
      sql.add('select * from Tb_Disciplinas');
      sql.add('where Nome like ' + ''''+edConsulta.text+'%'+'''');
      sql.add('order by nome');
      open;
     end;
  except

  end;

end;

procedure TfrmDisciplinas.QyDisciplinasBeforeDelete(DataSet: TDataSet);
begin
  Application.MessageBox('Essa "Disciplina" ainda não poderá ser excluida','Informações.',mb_ok+mb_iconinformation);
  Abort;
end;

procedure TfrmDisciplinas.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

end.
