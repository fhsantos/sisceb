unit uGerarCarne;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TfrmGerarCarne = class(TForm)
    Panel1: TPanel;
    cbParc1: TComboBox;
    cbParc2: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    edValor: TEdit;
    Label3: TLabel;
    edMes: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    cbAno: TComboBox;
    SpeedButton2: TSpeedButton;
    edVencimento: TEdit;
    Label6: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGerarCarne: TfrmGerarCarne;

implementation

uses uDtModule;

{$R *.DFM}

procedure TfrmGerarCarne.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if dtModule.Tag = 1 then
  begin
   dtModule.Parc1:= StrToInt(cbParc1.Text);
   dtModule.Parc2:= StrToInt(cbParc2.Text);
   dtModule.Mes:= StrToInt(edMes.Text);
   dtModule.Ano:= cbAno.Text;
   dtModule.Valor:= StrToFloat(FormatFloat('##.00',StrToFloat(edValor.Text)));
  end;

  frmGerarCarne.Release;
  frmGerarCarne:=nil;
end;

procedure TfrmGerarCarne.SpeedButton1Click(Sender: TObject);
begin
  dtModule.Tag:= 1;
  dtModule.Dia:= StrToInt(edVencimento.Text);
  close;
end;

procedure TfrmGerarCarne.SpeedButton2Click(Sender: TObject);
begin
  dtModule.Tag:=2;
  close;
end;

end.
