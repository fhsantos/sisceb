unit uListaContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Db, DBTables, Buttons;

type
  TfrmListaContas = class(TForm)
    Panel1: TPanel;
    rdgConsulta: TRadioGroup;
    edConsultar: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    QyLista: TQuery;
    DsLista: TDataSource;
    SpeedButton1: TSpeedButton;
    QyListaCodDescricao: TIntegerField;
    QyListaDescricao: TStringField;
    QyListaStatus: TStringField;
    procedure edConsultarChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmListaContas: TfrmListaContas;

implementation

uses uDtModule;


{$R *.DFM}

procedure TfrmListaContas.edConsultarChange(Sender: TObject);
begin
  try
    with QyLista do
     begin
      close;
      sql.clear;
      sql.add('select * from Tb_Descricao');
      if rdgConsulta.ItemIndex = 0 then
      sql.add('where Descricao like ' + ''''+edConsultar.Text+'%'+'''')

      else if rdgConsulta.ItemIndex = 1 then
      sql.add('where CodDescricao like ' + ''''+edConsultar.Text+'%'+'''');

      sql.add('order by Descricao');
      open;
     end;
  except

  end;

end;

procedure TfrmListaContas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 try
  dtModule.CodDescricao  := QyListaCodDescricao.AsInteger;
  dtModule.Conta         := QyListaDescricao.AsString;
  dtModule.Tipo          := QyListaStatus.AsString;

  QyLista.close;
  dtModule.Tag := 2;
  Release;
  frmListaContas:=nil;
 except
 end;
end;

procedure TfrmListaContas.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmListaContas.DBGrid1CellClick(Column: TColumn);
begin
  try
   dtModule.CodDescricao  := QyListaCodDescricao.AsInteger;
   dtModule.Conta         := QyListaDescricao.AsString;
   dtModule.Tipo          := QyListaStatus.AsString;
  except

  end;

end;

end.
