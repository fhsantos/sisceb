unit uFormaPagto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TfrmFormaPagto = class(TForm)
    Panel4: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    edValor: TEdit;
    Label1: TLabel;
    edParc1: TEdit;
    edParc2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    spFechar: TSpeedButton;
    Label4: TLabel;
    cbSituacao: TComboBox;
    dtPagamento: TDateTimePicker;
    Label5: TLabel;
    rdForma: TRadioGroup;
    spCancelar: TSpeedButton;
    procedure spFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbFormaPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure edValorExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rdFormaClick(Sender: TObject);
    procedure spCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFormaPagto: TfrmFormaPagto;

implementation

uses uDtModule;

{$R *.DFM}

procedure TfrmFormaPagto.spFecharClick(Sender: TObject);
begin
  Tag:= 1;
  close;

end;

procedure TfrmFormaPagto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 try
  if Tag = 1 then
   begin
     if rdForma.ItemIndex = 0 then
      dtModule.CodForma:= '1'
     else if rdForma.ItemIndex = 1 then
      dtModule.CodForma:= '2'
     else if rdForma.ItemIndex = 2 then
      dtModule.CodForma:= '3'
     else if rdForma.ItemIndex = 3 then
      dtModule.CodForma:= '4';

     dtModule.FormaPagto:= dtModule.CodForma;

     dtModule.Situacao:= cbSituacao.Text;
     dtModule.Valor:= StrToFloat(edValor.Text);
     dtModule.DtPagto:= DateToStr(dtPagamento.DateTime);
     dtModule.Parc1:= StrToInt(edParc1.Text);
     dtModule.Parc2:= StrToInt(edParc2.Text);
   end;
   dtModule.QySql.close;
   Release;
   frmFormaPagto:=nil;

 except
 end;
end;

procedure TfrmFormaPagto.cbFormaPagtoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmFormaPagto.edValorKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

    if not (key in ['0'..'9','*','.',',',#8]) then
 Key := #0;

end;

procedure TfrmFormaPagto.edValorExit(Sender: TObject);
begin
  edValor.Text:= FormatFloat('##.00',StrToFloat(edValor.Text));
end;

procedure TfrmFormaPagto.FormActivate(Sender: TObject);
begin
  try
    dtPagamento.DateTime:= date;
  except

  end;

end;

procedure TfrmFormaPagto.rdFormaClick(Sender: TObject);
begin
  try
    if rdForma.ItemIndex = 0 then
     dtModule.CodForma:= '1'
    else if rdForma.ItemIndex = 1 then
     dtModule.CodForma:= '2'
    else if rdForma.ItemIndex = 2 then
     dtModule.CodForma:= '3'
    else if rdForma.ItemIndex = 3 then
     dtModule.CodForma:= '4';
  except
    abort;
  end;

end;

procedure TfrmFormaPagto.spCancelarClick(Sender: TObject);
begin
  try
    dtModule.FormaPagto:= '';
    Tag:= 2;
    close;
  except

  end;

end;

end.
