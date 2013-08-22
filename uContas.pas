unit ucontas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Db, DBTables, Buttons, StdCtrls, ActnList;

type
  Tfrmcontas = class(TForm)
    Panel1: TPanel;
    DsContas: TDataSource;
    QyContas: TQuery;
    DBGrid1: TDBGrid;
    Shape1: TShape;
    Panel2: TPanel;
    SpeedButton10: TSpeedButton;
    rdopcao: TRadioGroup;
    Label1: TLabel;
    edloc: TEdit;
    QyContasCodigo: TIntegerField;
    QyContasCodConta: TIntegerField;
    QyContasDescricao: TStringField;
    QyContasDate: TDateTimeField;
    QyContasTipo: TStringField;
    ActionList1: TActionList;
    Consultar: TAction;
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConsultarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontas: Tfrmcontas;

implementation

uses uDtModule;

{$R *.DFM}

procedure Tfrmcontas.SpeedButton10Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dtmodule.codigo:= QyContasCodigo.AsInteger;
  dtmodule.descricao_conta:= QyContasDescricao.AsString;
  dtmodule.Tipo:= QyContasTipo.AsString;
  dtmodule.DtCadastro:= DateToStr(QyContasDate.AsDateTime);

  QyContas.close;
  Release;
  frmcontas:=nil;
end;

procedure Tfrmcontas.ConsultarExecute(Sender: TObject);
begin
 try
  with QyContas do
  begin
  close;
  sql.clear;
  sql.add('select * from Vw_ControleContas');
  if rdopcao.ItemIndex = 0 then
  sql.add('where codigo = ' + edloc.text)

  else
  if rdopcao.ItemIndex = 1 then
  sql.add('where descricao like ' + ''''+edloc.text+ '%' + '''');

  sql.add('order by descricao');
  open;
  end;


  except
  abort;
  end;
end;

end.
