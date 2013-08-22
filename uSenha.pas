unit USenha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons,DBTables, Db;

type
  TFrmSenha = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Image2: TImage;
    Image3: TImage;
    Label1: TLabel;
    Label2: TLabel;
    EdtUsuario: TEdit;
    Panel3: TPanel;
    Panel2: TPanel;
    Bevel2: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    EdtSenha: TEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    Tb_Expirou: TTable;
    Tb_ExpirouContador: TIntegerField;
    procedure EdtUsuarioChange(Sender: TObject);
    procedure EdtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure EdtSenhaChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSenha: TFrmSenha;
  Count   : Integer = 0;
  Sair    : Boolean;

implementation

uses uDtModule, uinterface;


{$R *.DFM}

procedure TFrmSenha.EdtUsuarioChange(Sender: TObject);
begin
  if(EdtSenha.Text <> '') and (EdtUsuario.text <> '') then
     BitBtn1.Enabled := True
  else
     BitBtn1.Enabled := False;
end;

procedure TFrmSenha.EdtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 begin
  SelectNext(sender as TwinControl,true,true);
  Key:= #0;
 end;
end;

procedure TFrmSenha.EdtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 begin
   SelectNext(sender as TwinControl,true,true);
   Key:= #0;
 end;
end;

procedure TFrmSenha.EdtSenhaChange(Sender: TObject);
begin
  if(EdtSenha.Text <> '') and (EdtUsuario.text <> '') then
   begin
     BitBtn1.Enabled := True;
//     Caption:= Encrypt(EdtSenha.text,0);
   end

  else
     BitBtn1.Enabled := False;
end;

procedure TFrmSenha.FormActivate(Sender: TObject);
begin
 FrmSenha.Tag := 0;
 EdtUsuario.Text := '';
 EdtSenha.Text := '';
 EdtUsuario.SetFocus;
 Label3.Caption := '0';
end;

procedure TFrmSenha.BitBtn1Click(Sender: TObject);
begin

  // Inicia a Conexão com o Banco de Dados na Rede
  with dtmodule.QySql do
   begin
     close;
     sql.clear;
     sql.add('select * from Tb_Usuarios');
     sql.add('where Nome = ' + ''''+EdtUsuario.Text+'''');
     sql.add('and Senha = ' + ''''+EdtSenha.Text+'''');
     open;
     dtModule.CodUser:= dtModule.QySql.FieldbyName('Codigo').AsString;
     dtModule.Usuario:= dtModule.QySql.FieldbyName('Nome').AsString;
     dtModule.Senha:= dtModule.QySql.FieldbyName('Senha').AsString;
   end;

 if (dtModule.QySql.FieldbyName('Nome').AsString <> EdtUsuario.Text) and (dtModule.QySql.FieldbyName('Senha').AsString <> EdtSenha.Text) then
  begin
   Application.MessageBox('"Senha" ou "Nome" inválido','ATENÇÃO',MB_OK+MB_ICONERROR);
   Caption:= '';
   Count:= Count + 1;
   Sair:= FALSE;
  end


 else begin
  with dtmodule.QySql do begin
    close;
    sql.Clear;
    sql.add('select * from Tb_Config');
    open;

    dtModule.Ano := dtModule.QySql.FieldbyName('Ano').AsString;
    Close;
  end;
  Sair:= TRUE;

  dtModule.dbAcademico.Connected:= TRUE;
 end;

 if Count = 3 then   // Se o Usuário não digitar a Senha Correta o Sistema Sai
  begin
   Application.MessageBox('Tentativas encerradas, sistema desativado !','SISENSINO',MB_IconError + MB_Ok);
   dtModule.dbAcademico.Connected := False;
   Application.Terminate;
 end;
    Label3.Caption := IntToStr(Count);

 Tb_Expirou.open;
 Tb_Expirou.edit;

 Tb_ExpirouContador.AsInteger:= Tb_ExpirouContador.AsInteger+1;
 Tb_Expirou.post;

 if Tb_ExpirouContador.AsInteger >= 1000 then
  begin
   Application.MessageBox('Sistema expirou seu "tempo de uso", por favor entre em contato'+''+
                          ' com o Analista Responsável','SISENSINO',MB_IconError + MB_Ok);
   dtModule.dbAcademico.Connected := False;
   Application.Terminate;
  end;


 if Sair = True then
  begin
   Tb_Expirou.close;
   frmInterface.TAG:= 2;
   frmInterface.StatusBar1.Panels[2].Text := 'Usuário :' +' '+UpperCase(dtModule.Usuario);
   frmInterface.StatusBar1.Panels[1].Text := 'Data/Horas:' +' '+DateToStr(Date) + '/' + TimeToStr(Time);

   FrmSenha.Close;
   FrmSenha.Tag := 1;
 end;
end;

procedure TFrmSenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Release;
  FrmSenha:= nil;
end;

procedure TFrmSenha.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
    if FrmSenha.Tag = 0 then
     begin
      case Application.Messagebox('Esta ação irá finalizar o "ENSINO".' +
                                  #13 + 'Você realmente deseja sair?','Finalização',MB_OKCANCEL+mb_IconQuestion +  MB_DefButton2) of

       IDCancel:
         Begin
          Canclose := False;
         end;

       IDOK:
        begin
           Application.Terminate;
        end;
     end;
end;
end;
procedure TFrmSenha.BitBtn2Click(Sender: TObject);
begin
   close;
end;
end.
