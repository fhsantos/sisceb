unit uSenhaCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, ActnList;

type
  TfrmSenhaCaixa = class(TForm)
    Panel1: TPanel;
    edSenha: TEdit;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    ActionList1: TActionList;
    Action1: TAction;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSenhaCaixa: TfrmSenhaCaixa;

implementation

uses uDtModule;

{$R *.DFM}

procedure TfrmSenhaCaixa.SpeedButton1Click(Sender: TObject);
begin
 close;
 dtModule.Senha:= '258789';
end;

procedure TfrmSenhaCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dtModule.Senha:= edSenha.Text;
  frmSenhaCaixa.Release;
  frmSenhaCaixa:=nil;
end;

end.
