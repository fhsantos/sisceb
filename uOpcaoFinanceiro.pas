unit uOpcaoFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ComCtrls;

type
  TfrmOpcaoFinanceiro = class(TForm)
    Panel4: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    Label21: TLabel;
    spFechar: TSpeedButton;
    Label4: TLabel;
    cbSituacao: TComboBox;
    dtInicio: TDateTimePicker;
    dtFinal: TDateTimePicker;
    Label1: TLabel;
    spRelatorio: TSpeedButton;
    cbMes: TComboBox;
    Label2: TLabel;
    cbAno: TComboBox;
    Label3: TLabel;
    cbTurma: TComboBox;
    Label5: TLabel;
    cbStatus: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label22: TLabel;
    cbSerie: TComboBox;
    cbNivel: TComboBox;
    procedure spFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbFormaPagtoKeyPress(Sender: TObject; var Key: Char);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
    procedure spRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbNivelEnter(Sender: TObject);
    procedure cbSerieEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOpcaoFinanceiro: TfrmOpcaoFinanceiro;

implementation

uses uDtModule, uRelFinanceiro;

{$R *.DFM}

procedure TfrmOpcaoFinanceiro.spFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOpcaoFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Release;
   frmOpcaoFinanceiro:=nil;

end;

procedure TfrmOpcaoFinanceiro.cbFormaPagtoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmOpcaoFinanceiro.edValorKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

    if not (key in ['0'..'9','*','.',',',#8]) then
 Key := #0;

end;

procedure TfrmOpcaoFinanceiro.spRelatorioClick(Sender: TObject);
begin
  try
    frmRelFinanceiro:=TfrmRelFinanceiro.create(self);
    with frmRelFinanceiro.QyFinanceiro do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Carnes');
//      if Application.MessageBox('Imprimir por Data ou Mês','Informações',mb_yesno+MB_ICONEXCLAMATION+MB_DEFBUTTON2) = idyes then
      sql.add('where Parcela = ' + cbMes.Text);
      sql.add('and Serie = ' + ''''+cbSerie.Text+'''');
      sql.add('and Nivel = ' + ''''+cbNivel.Text+'''');
      sql.add('and Situacao = ' + ''''+cbSituacao.Text+'''');
      sql.add('and Status = ' + ''''+cbStatus.Text+'''');
      sql.add('and Ano = ' + cbAno.Text);
      sql.add('and Turma = ' + ''''+cbTurma.Text+'''');
      sql.add('order by Serie,Aluno');
      open;
     end;
    frmRelFinanceiro.qrPeriodo.Caption:= 'Período de Impressão de:' + ' ' + DateToStr(dtInicio.DateTime) + ' ' + 'A' + ' ' + DateToStr(dtFinal.DateTime);
    frmRelFinanceiro.QuickRep1.Preview;
  except

  end;

end;

procedure TfrmOpcaoFinanceiro.FormShow(Sender: TObject);
begin
 try
  dtInicio.DateTime:=date;
  dtFinal.DateTime:=date;

  cbSituacao.Text:='EM ABERTA';
 except
 end;
end;

procedure TfrmOpcaoFinanceiro.cbNivelEnter(Sender: TObject);
 var
  i:Integer;
begin
 try
    cbNivel.Clear;
    with Dtmodule.QySql do
     begin
      close;
      sql.clear;
      sql.add('Select * from Tb_Nivel');
      sql.add('Order by Nome');
      open;
     end;

    for i:= 0 to Dtmodule.QySql.RecordCount-1 do
     begin
      cbNivel.Items.Add(Dtmodule.QySql.FieldByname('Nome').AsString);
      Dtmodule.QySql.Next;
     end;
       Dtmodule.QySql.close;
 except
 end;

end;

procedure TfrmOpcaoFinanceiro.cbSerieEnter(Sender: TObject);
 var
  i:Integer;
begin
 try
    cbSerie.Clear;
    with Dtmodule.QySql do
     begin
      close;
      sql.clear;
      sql.add('Select * from Vw_NivelSerie');
      sql.add('Where Nivel = ' + ''''+cbNivel.Text+'''');
      sql.add('Order by Serie');
      open;
     end;

    for i:= 0 to Dtmodule.QySql.RecordCount-1 do
     begin
      cbSerie.Items.Add(Dtmodule.QySql.FieldByname('Serie').AsString);
      Dtmodule.QySql.Next;
     end;
       Dtmodule.QySql.close;
 except
 end;

end;

end.
