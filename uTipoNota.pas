unit uTipoNota;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmTipoNota = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    rdNotas: TRadioGroup;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdNotasClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTipoNota: TfrmTipoNota;

implementation

uses uDtModule;

{$R *.DFM}

procedure TfrmTipoNota.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1.click;
end;

procedure TfrmTipoNota.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmTipoNota.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //dtModule.Valor:=  StrToFloat(FormatFloat('##.00',QyTurmaValor.AsFloat));

  Release;
  frmTipoNota:= nil;
end;

procedure TfrmTipoNota.rdNotasClick(Sender: TObject);
begin
  try
    if rdNotas.ItemIndex = 0 then
      dtModule.Tag:= 1
    else
      dtModule.Tag:= 2;

  except

  end;

end;

end.
