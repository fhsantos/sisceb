unit uCursos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, Db, DBTables, Mask, DBCtrls,
  DBActns, ActnList, ComCtrls;

type
  TfrmCursos = class(TForm)
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
    DsSerie: TDataSource;
    QySerie: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    spFechar: TSpeedButton;
    spConsultar: TSpeedButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    ActionList1: TActionList;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    upSerie: TUpdateSQL;
    DBNavigator1: TDBNavigator;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    dtResolucao: TDateTimePicker;
    QySerieCodSerie: TIntegerField;
    QySerieCodNivel: TIntegerField;
    QySerieNome: TStringField;
    QySerieAbreviado: TStringField;
    QySerieResolucao: TStringField;
    QySerieDtResolucao: TDateTimeField;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spFecharClick(Sender: TObject);
    procedure QySerieAfterCancel(DataSet: TDataSet);
    procedure QySerieAfterDelete(DataSet: TDataSet);
    procedure QySerieAfterPost(DataSet: TDataSet);
    procedure QySerieNewRecord(DataSet: TDataSet);
    procedure QySerieBeforePost(DataSet: TDataSet);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
 
  public
    { Public declarations }
  end;

var
  frmCursos: TfrmCursos;

implementation

uses uDtModule;



{$R *.DFM}

procedure TfrmCursos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   QySerie.close;
   Release;
   frmCursos:=nil;
end;

procedure TfrmCursos.spFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCursos.QySerieAfterCancel(DataSet: TDataSet);
begin
  try
    QySerie.CancelUpdates;
  except
   abort;

  end;

end;

procedure TfrmCursos.QySerieAfterDelete(DataSet: TDataSet);
begin
  try
    QySerie.ApplyUpdates;
    QySerie.CommitUpdates;
  except
   abort;

  end;

end;

procedure TfrmCursos.QySerieAfterPost(DataSet: TDataSet);
begin
  try
    QySerie.ApplyUpdates;
    QySerie.CommitUpdates;
  except
   abort;

  end;

end;

procedure TfrmCursos.QySerieNewRecord(DataSet: TDataSet);
 var
  cod:string;
begin
  try
   QySerieDtResolucao.AsDateTime:= dtResolucao.DateTime;
{    with dtModule.QySql do
     begin
      close;
      sql.clear;
      sql.add('select max(codcurso) as maior from Tb_Cursos');
      open;

      cod:='';

      cod:= copy(DateToStr(Date),7,4)+IntToStr(dtModule.QySql.fieldByName('maior').AsInteger+1);
      close;

      QyCursosCodCurso.AsString:=cod;

     end;}
  except

  end;

end;

procedure TfrmCursos.QySerieBeforePost(DataSet: TDataSet);
begin
   QySerieDtResolucao.AsDateTime:= dtResolucao.DateTime;

end;

procedure TfrmCursos.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

end.
