unit uTipoTurmas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmTipoTurma = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    QyTurma: TQuery;
    dsforma: TDataSource;
    BitBtn1: TBitBtn;
    QyTurmaCodSerie: TIntegerField;
    QyTurmaTurma: TStringField;
    QyTurmaTurno: TStringField;
    QyTurmaCapacidade: TIntegerField;
    QyTurmaValor: TFloatField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoTurma: TfrmTipoTurma;

implementation

uses uDtModule;

{$R *.DFM}

procedure TfrmTipoTurma.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1.click;
end;

procedure TfrmTipoTurma.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoTurma.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //dtModule.Valor:=  StrToFloat(FormatFloat('##.00',QyTurmaValor.AsFloat));

  QyTurma.close;
  Release;
  frmTipoTurma:= nil;
end;

end.
