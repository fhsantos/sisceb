unit uTurmas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, Db, DBTables, Mask, DBCtrls,
  DBActns, ActnList;

type
  TfrmTurmas = class(TForm)
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
    DsTurmas: TDataSource;
    QyTurmas: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    spFechar: TSpeedButton;
    spConsultar: TSpeedButton;
    Label6: TLabel;
    ActionList1: TActionList;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    upTurmas: TUpdateSQL;
    DBLookupComboBox1: TDBLookupComboBox;
    QyTurmasTurma: TStringField;
    QyTurmasTurno: TStringField;
    QyTurmasCapacidade: TIntegerField;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    QySerie: TQuery;
    DsSerie: TDataSource;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBNavigator1: TDBNavigator;
    QyTurmasValor: TFloatField;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    QyTurmasCodSerie: TIntegerField;
    QyTurmasSerie: TStringField;
    QyTurmasNivel: TStringField;
    QySerieCodSerie: TIntegerField;
    QySerieNivel: TStringField;
    QySerieSerie: TStringField;
    QySerieCodNivel: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spFecharClick(Sender: TObject);
    procedure QyTurmasAfterCancel(DataSet: TDataSet);
    procedure QyTurmasAfterDelete(DataSet: TDataSet);
    procedure QyTurmasAfterPost(DataSet: TDataSet);
    procedure QyTurmasNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
 
  public
    { Public declarations }
  end;

var
  frmTurmas: TfrmTurmas;

implementation

{$R *.DFM}

procedure TfrmTurmas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   QySerie.close;
   QyTurmas.close;
   Release;
   frmTurmas:=nil;
end;

procedure TfrmTurmas.spFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmTurmas.QyTurmasAfterCancel(DataSet: TDataSet);
begin
  try
    QyTurmas.CancelUpdates;
  except
   abort;

  end;

end;

procedure TfrmTurmas.QyTurmasAfterDelete(DataSet: TDataSet);
begin
  try
    QyTurmas.ApplyUpdates;
    QyTurmas.CommitUpdates;
  except
   abort;

  end;

end;

procedure TfrmTurmas.QyTurmasAfterPost(DataSet: TDataSet);
begin
  try
    QyTurmas.ApplyUpdates;
    QyTurmas.CommitUpdates;
  except
   abort;

  end;

end;

procedure TfrmTurmas.QyTurmasNewRecord(DataSet: TDataSet);
begin
  try
   QyTurmasCodSerie.AsInteger:= QySerieCodSerie.AsInteger;
  except

  end;

end;

end.
