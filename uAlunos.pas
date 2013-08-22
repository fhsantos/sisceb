unit uAlunos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, Db, DBTables, Buttons, Grids, DBGrids,
  ActnList, DBCtrls, ExtDlgs, jpeg;

type
  TfrmAlunos = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    edMatricula: TEdit;
    edNome: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Panel2: TPanel;
    edEndereco: TEdit;
    Label5: TLabel;
    edBairro: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    edCidade: TEdit;
    edComplemento: TEdit;
    Label8: TLabel;
    dtNascimento: TDateTimePicker;
    Label9: TLabel;
    Label10: TLabel;
    dtCadastro: TDateTimePicker;
    cbSexo: TComboBox;
    Label11: TLabel;
    edCEP: TEdit;
    Label12: TLabel;
    edEmail: TEdit;
    Label13: TLabel;
    MmObs: TMemo;
    Label16: TLabel;
    edDesconto: TEdit;
    Label17: TLabel;
    edBolsista: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    edEstado: TEdit;
    Panel3: TPanel;
    edConsultar: TEdit;
    spNovo: TSpeedButton;
    spExcluir: TSpeedButton;
    spSalvar: TSpeedButton;
    spAlterar: TSpeedButton;
    spCancelar: TSpeedButton;
    spRelatorio: TSpeedButton;
    Tb_Config: TTable;
    Tb_ConfigRazao: TStringField;
    Tb_ConfigCNPJ: TStringField;
    Tb_ConfigEndereco: TStringField;
    Tb_ConfigTel: TStringField;
    Tb_ConfigFax: TStringField;
    Tb_ConfigAno: TIntegerField;
    Tb_ConfigDigito: TIntegerField;
    Label20: TLabel;
    edFone: TEdit;
    Label21: TLabel;
    edCelular: TEdit;
    QyAlunos: TQuery;
    QyAlunosNome: TStringField;
    QyAlunosSexo: TStringField;
    QyAlunosPai: TStringField;
    QyAlunosMae: TStringField;
    QyAlunosDt_Nasc: TDateTimeField;
    QyAlunosDt_Cadastro: TDateTimeField;
    QyAlunosEndereco: TStringField;
    QyAlunosBairro: TStringField;
    QyAlunosCidade: TStringField;
    QyAlunosEstado: TStringField;
    QyAlunosComplemento: TStringField;
    QyAlunosTel: TStringField;
    QyAlunosCelular: TStringField;
    QyAlunosCPF: TStringField;
    QyAlunosCI: TStringField;
    QyAlunosemail: TStringField;
    QyAlunosObs: TStringField;
    QyAlunosDesconto: TFloatField;
    QyAlunosBolsista: TStringField;
    QyAlunosMatricula: TIntegerField;
    QyAlunosCEP: TStringField;
    SpeedButton2: TSpeedButton;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    DsAlunos: TDataSource;
    Panel6: TPanel;
    QyAlunosResponsavel: TStringField;
    QyAlunosCpfResponsavel: TStringField;
    QyAlunosCiResponsavel: TStringField;
    QyAlunosFoneResponsavel: TStringField;
    edNomeResponsavel: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    edCpfResponsavel: TEdit;
    Label24: TLabel;
    edCiResponsavel: TEdit;
    edFoneResponsavel: TEdit;
    Label25: TLabel;
    ActionList1: TActionList;
    Salvar: TAction;
    Novo: TAction;
    OpenPictureDialog1: TOpenPictureDialog;
    QyAlunosFoto: TStringField;
    Panel7: TPanel;
    Image1: TImage;
    Consultar: TAction;
    Label26: TLabel;
    QyAlunosImprimir: TStringField;
    Bevel1: TBevel;
    Label3: TLabel;
    edPai: TEdit;
    Label4: TLabel;
    edMae: TEdit;
    Label14: TLabel;
    edCPF: TEdit;
    Label15: TLabel;
    edCI: TEdit;
    chekbox: TCheckBox;
    Bevel2: TBevel;
    Bevel3: TBevel;
    rdRelatorio: TRadioGroup;
    Label27: TLabel;
    spFechar: TSpeedButton;
    ActionList2: TActionList;
    Hab: TAction;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spNovoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
    procedure spSalvarClick(Sender: TObject);
    procedure spAlterarClick(Sender: TObject);
    procedure spExcluirClick(Sender: TObject);
    procedure spCancelarClick(Sender: TObject);
    procedure edMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure spRelatorioClick(Sender: TObject);
    procedure edConsultarChange(Sender: TObject);
    procedure edConsultarClick(Sender: TObject);
    procedure rdRelatorioClick(Sender: TObject);
    procedure spFecharClick(Sender: TObject);
    procedure HabExecute(Sender: TObject);
  private
    { Private declarations }
    procedure LimparEdits;
    procedure Habilitar;
    procedure Desabilitar;

  public
    { Public declarations }
    foto:string[255];
    function NomeMes(nMonth: Integer): String;
  end;

var
  frmAlunos: TfrmAlunos;

implementation

uses uDtModule, uinterface, uMatricula, uRelAlunos, uRelCarteira,
  uRelCarteiraVerso, uRelAniversariantes;

{$R *.DFM}

function TfrmAlunos.NomeMes(nMonth: Integer): String;
begin
  case nMonth of
    1: Result:= 'JANEIRO';
    2: Result:= 'FEVEREIRO';
    3: Result:= 'MARÇO';
    4: Result:= 'ABRIL';
    5: Result:= 'MAIO';
    6: Result:= 'JUNHO';
    7: Result:= 'JULHO';
    8: Result:= 'AGOSTO';
    9: Result:= 'SETEMBRO';
    10: Result:= 'OUTUBRO';
    11: Result:= 'NOVEMBRO';
    12: Result:= 'DEZEMBRO';
  end;
end;

procedure TfrmAlunos.LimparEdits;
 var i,x : Integer;
begin
  for i := 0 to ComponentCount -1 do
  if Components[i] is TEdit then
  begin
    TEdit(Components[i]).Text := '';
  end;

  for x := 0 to ComponentCount -1 do
  if Components[x] is TComboBox then
  begin
    TComboBox(Components[x]).Text := '';
  end;
end;

procedure TfrmAlunos.Habilitar;
 var i,x : Integer;
begin
  for i := 0 to ComponentCount -1 do
  if Components[i] is TEdit then
  begin
    TEdit(Components[i]).Enabled := True;
  end;

  for x := 0 to ComponentCount -1 do
  if Components[x] is TComboBox then
  begin
    TComboBox(Components[x]).Enabled := True;
  end;
end;

procedure TfrmAlunos.Desabilitar;
 var i,x : Integer;
begin
  for i := 0 to ComponentCount -1 do
  if Components[i] is TEdit then
  begin
    TEdit(Components[i]).Enabled := false;
  end;

  for x := 0 to ComponentCount -1 do
  if Components[x] is TComboBox then
  begin
    TComboBox(Components[x]).Enabled := false;
  end;
end;


procedure TfrmAlunos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QyAlunos.close;
  Release;
  frmAlunos:=nil;
end;

procedure TfrmAlunos.spNovoClick(Sender: TObject);
 var
  seq:integer;
begin
 try
  Habilitar;
  LimparEdits;
  dtNascimento.Enabled:=true;
  dtCadastro.Enabled:=true;
  edDesconto.Text:= '0';


  Tb_Config.open;
  Tb_Config.edit;

  seq:=Tb_ConfigDigito.AsInteger+1;

  Tb_ConfigDigito.AsInteger:= seq;
  edMatricula.Text:= Tb_ConfigAno.AsString+formatfloat('0000',seq);

  Tb_Config.Post;
  edNome.SetFocus;
  spSalvar.Enabled:= true;
  dtCadastro.DateTime:=date;
  edCEP.Text:= '49500000';
  edCidade.Text:= 'Itabaiana';
  edEstado.Text:= 'SE';
  cbSexo.Text:= 'Masculino';
  edBairro.Text:= 'CENTRO';
  Tag:=1;
  OpenPictureDialog1.Execute;
  Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
 except
 end;
end;

procedure TfrmAlunos.FormCreate(Sender: TObject);
begin
  Desabilitar;
end;

procedure TfrmAlunos.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmAlunos.spSalvarClick(Sender: TObject);
 var
  dt_Nasc,Dt_Cadastro,foto:string;
begin
 try
  if (Trim(edNome.Text) = '') then
  begin
   Application.MessageBox('Informe o "Nome"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if (Trim(edEndereco.Text) = '') then
  begin
   Application.MessageBox('Informe o "Endereço"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if (Trim(edBairro.Text) = '') then
  begin
   Application.MessageBox('Informe o "Bairro"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if (Trim(edCidade.Text) = '') then
  begin
   Application.MessageBox('Informe o "Cidade"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if (Trim(cbSexo.Text) = '') then
  begin
   Application.MessageBox('Informe o "Sexo"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if (Trim(edCEP.Text) = '') then
  begin
   Application.MessageBox('Informe o "CEP"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if (Trim(edPai.Text) = '') then
  begin
   Application.MessageBox('Informe o "Pai"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if (Trim(edMae.Text) = '') then
  begin
   Application.MessageBox('Informe o "Mãe"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;


  if Tag = 1 then
  begin
   dt_Nasc:= DateToStr(dtNascimento.DateTime);
   Dt_Cadastro:= DateToStr(dtCadastro.DateTime);

   try
    if not dtModule.dbAcademico.InTransaction then
     dtModule.dbAcademico.StartTransaction;

    with dtModule.QySql do
     begin
      close;
      sql.Clear;
      sql.add('insert into Tb_Alunos');
      sql.add('values'+'('+edMatricula.Text+','+''''+edNome.Text+''''+','+''''+cbSexo.Text+''''+','+''''+edPai.Text+''''+','+''''+edMae.Text+''''
                      +','+''''+dt_Nasc+''''+','+''''+Dt_Cadastro+''''+','+''''+edEndereco.Text+''''
                      +','+''''+edBairro.Text+''''+','+''''+edCidade.Text+''''+','+''''+edEstado.Text+''''+','+''''+edComplemento.Text+''''
                      +','+''''+edCEP.Text+''''+','+''''+edFone.Text+''''+','+''''+edCelular.Text+''''+','+''''+edCPF.Text+''''+','+''''+edCI.Text+''''
                      +','+''''+edEmail.Text+''''+','+''''+MmObs.Text+''''+','+edDesconto.Text+','+''''+'N'+''''
                      +','+''''+edNomeResponsavel.text+''''+','+''''+edCpfResponsavel.Text+''''+','+''''+edCiResponsavel.text+''''+','+''''+edFoneResponsavel.Text+''''
                      +','+''''+OpenPictureDialog1.FileName+''''+','+''''+'N'+''''+')');
      ExecSQL;
     end;

     dtModule.dbAcademico.Commit;
     Application.MessageBox('Registro gravado com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
     Desabilitar;
     spSalvar.Enabled:=false;


   except
     dtModule.dbAcademico.Rollback;
     Application.MessageBox('Erro ao gravar registro','Informações',mb_ok+MB_ICONERROR);

   end;
  end;

  if Tag = 2 then
  begin
   dt_Nasc:= DateToStr(dtNascimento.DateTime);
   Dt_Cadastro:= DateToStr(dtCadastro.DateTime);
   try
    if not dtModule.dbAcademico.InTransaction then
     dtModule.dbAcademico.StartTransaction;

    with dtModule.QySql do
     begin
      close;
      sql.Clear;
      sql.add('Update Tb_Alunos');
      sql.add('Set Nome = '       +''''+edNome.Text+'''');
      sql.add(',Sexo = '          +''''+cbSexo.Text+'''');
      sql.add(',Pai = '           +''''+edPai.Text+'''');
      sql.add(',Mae = '           +''''+edMae.Text+'''');
      sql.add(',Dt_Nasc = '       +''''+dt_Nasc+'''');
      sql.add(',Dt_Cadastro = '   +''''+Dt_Cadastro+'''');
      sql.add(',Endereco = '      +''''+edEndereco.Text+'''');
      sql.add(',Bairro = '        +''''+edBairro.Text+'''');
      sql.add(',Cidade = '        +''''+edCidade.Text+'''');
      sql.add(',Estado = '        +''''+edEstado.Text+'''');
      sql.add(',Complemento = '   +''''+edComplemento.Text+'''');
      sql.add(',CEP = '           +''''+edCEP.Text+'''');
      sql.add(',Tel = '           +''''+edFone.Text+'''');
      sql.add(',Celular = '       +''''+edCelular.Text+'''');
      sql.add(',CPF = '           +''''+edCPF.Text+'''');
      sql.add(',CI =  '           +''''+edCI.Text+'''');
      sql.add(',email = '         +''''+edEmail.Text+'''');
      sql.add(',Obs = '           +''''+MmObs.Text+'''');
      sql.add(',Desconto = '      +edDesconto.Text);
      sql.add(',Bolsista = '      +''''+edBolsista.Text+'''');
      sql.add(',Responsavel = '+ ''''+edNomeResponsavel.text+'''');
      sql.add(',CpfResponsavel =  '+ ''''+edCpfResponsavel.Text+'''');
      sql.add(',CiResponsavel = '  +''''+edCiResponsavel.text+'''');
      sql.add(',FoneResponsavel = '+''''+edFoneResponsavel.Text+'''');
      sql.add(',Foto = '+''''+OpenPictureDialog1.FileName+'''');
      if chekbox.Checked = true then
      sql.add(',Imprimir = '+''''+'S'+'''')
      else
      sql.add(',Imprimir = '+''''+'N'+'''');


      sql.add('where Matricula = ' + edMatricula.Text);
      ExecSQL;
     end;

     dtModule.dbAcademico.Commit;
     Application.MessageBox('Registro alterado com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
     Desabilitar;


   except
     dtModule.dbAcademico.Rollback;
     Application.MessageBox('Erro ao alterar registro','Informações',mb_ok+MB_ICONERROR);

   end;

  end;
except
end;

end;

procedure TfrmAlunos.spAlterarClick(Sender: TObject);
begin
 try
   Tag:=2;
   Habilitar;
   spSalvar.Enabled:=true;
   OpenPictureDialog1.Execute;
   Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
 except

 end;

end;

procedure TfrmAlunos.spExcluirClick(Sender: TObject);
begin
 try
   if Application.MessageBox('Deseja excluir esse aluno?','Informações',mb_yesno+mb_iconexclamation+MB_DEFBUTTON2) = idyes then
    begin
     try
       if not dtModule.dbAcademico.InTransaction then
        dtModule.dbAcademico.StartTransaction;

       with dtModule.QySql do
        begin
         close;
         sql.clear;
         sql.add('delete Tb_Alunos');
         sql.add('where Matricula = ' + edMatricula.Text);
         ExecSQL;
        end;
       dtModule.dbAcademico.Commit;
       Application.MessageBox('Registro excluido com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
       LimparEdits;
       Desabilitar;
     except
       dtModule.dbAcademico.Rollback;
       Application.MessageBox('Erro ao excluir registro','Informações',mb_ok+MB_ICONERROR);
     end;

    end;
 except
 end;
end;

procedure TfrmAlunos.spCancelarClick(Sender: TObject);
begin
  Tag:=0;
  Habilitar;
end;

procedure TfrmAlunos.edMatriculaKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmAlunos.SpeedButton2Click(Sender: TObject);
begin
  frmInterface.Sair1.Click;
  LockWindowUpdate(handle);
  frmMatricula:=TfrmMatricula.Create(self);
  frmMatricula.show;
  LockWindowUpdate(0);
end;

procedure TfrmAlunos.DBGrid1CellClick(Column: TColumn);
begin
 try
//    LimparEdits;

    edMatricula.Text:= QyAlunosMatricula.AsString;
    edNome.Text:= QyAlunosNome.AsString;

    dtNascimento.DateTime:= QyAlunosDt_Nasc.AsDateTime;
    dtCadastro.DateTime:= QyAlunosDt_Cadastro.AsDateTime;
    cbSexo.Text:= QyAlunosSexo.AsString;
    edEndereco.Text:= QyAlunosEndereco.AsString;
    edComplemento.Text:= QyAlunosComplemento.AsString;
    edBairro.Text:= QyAlunosBairro.AsString;
    edCidade.Text:= QyAlunosCidade.AsString;
    edCEP.Text:= QyAlunosCEP.AsString;
    edEstado.Text:= QyAlunosEstado.AsString;
    edFone.Text:= QyAlunosTel.AsString;
    edCelular.Text:= QyAlunosCelular.AsString;
    edEmail.Text:= QyAlunosemail.AsString;
    edPai.Text:= QyAlunosPai.AsString;
    edMae.Text:= QyAlunosMae.AsString;
    edCPF.Text:= QyAlunosCPF.AsString;
    edCI.Text:= QyAlunosCI.AsString;
    edDesconto.Text:= QyAlunosDesconto.AsString;
    edBolsista.Text:=QyAlunosBolsista.AsString;
    edNomeResponsavel.Text:= QyAlunosResponsavel.AsString;
    edCpfResponsavel.Text:= QyAlunosCpfResponsavel.AsString;
    edCiResponsavel.Text:= QyAlunosCiResponsavel.AsString;
    edFoneResponsavel.Text:= QyAlunosFoneResponsavel.AsString;

    Image1.Picture.LoadFromFile(QyAlunosFoto.AsString);

    if QyAlunosImprimir.AsString = 'S' then
     chekbox.Checked:= true
    else
     chekbox.Checked:= false;

 except
 end;
end;

procedure TfrmAlunos.spRelatorioClick(Sender: TObject);
 var
  Mes:String;
begin
  try
   if rdRelatorio.ItemIndex = 0 then
    begin
      frmRelAlunos:=TfrmRelAlunos.create(self);
      with frmRelAlunos.QyMaster do
       begin
        close;
        sql.Clear;
        sql.add('Select * from Vw_Alunos');
        sql.add('where Matricula = ' + edMatricula.Text);
        open;
       end;
      frmRelAlunos.QuickRep1.Preview;
    end
   else if rdRelatorio.ItemIndex = 1 then
    begin
      frmRelCarteira:=TfrmRelCarteira.create(self);
      with frmRelCarteira.QyCarne do
       begin
        close;
        sql.Clear;
        sql.add('Select * from Vw_AlunosMatricula');
        sql.add('where Imprimir = ' + ''''+'S'+'''');
        open;
       end;
      frmRelCarteira.QuickRep2.Preview;
    end
   else if rdRelatorio.ItemIndex = 2 then
    begin
      frmRelCarteiraVerso:=TfrmRelCarteiraVerso.create(self);
      with frmRelCarteiraVerso.QyCarne do
       begin
        close;
        sql.Clear;
        sql.add('Select TOP 8 * from Vw_AlunosMatricula');
        sql.add('where Imprimir = ' + ''''+'N'+'''');
        open;
       end;
      frmRelCarteiraVerso.QuickRep2.Preview;
    end
   else if rdRelatorio.ItemIndex = 3 then
    begin
     Mes:= copy(DateToStr(Date),4,2);

     FrmRelAniversariantes:=TFrmRelAniversariantes.create(self);
     with FrmRelAniversariantes.QyAlunos do
      begin
       close;
       sql.Clear;
       sql.add('select * from Vw_Alunos');
       sql.add('where datepart(month,Dt_Nasc) = ' + ''''+Mes+'''');
       sql.add('and Situacao      = ' + ''''+'NORMAL'+'''');
       sql.add('order by nome');
       open;
      end;
      FrmRelAniversariantes.qrMes.Caption:= 'ANIVERSARIANTES DO MÊS DE:' + ' ' + '"'+NomeMes(StrToInt(copy(DateToStr(Date),4,2)))+'"';
      FrmRelAniversariantes.QuickRep1.Preview;
    end
   else if rdRelatorio.ItemIndex = 3 then
    begin
     Mes:= copy(DateToStr(Date),4,2);

     FrmRelAniversariantes:=TFrmRelAniversariantes.create(self);
     with FrmRelAniversariantes.QyAlunos do
      begin
       close;
       sql.Clear;
       sql.add('select * from Vw_Alunos');
       sql.add('where datepart(month,Dt_Nasc) = ' + ''''+Mes+'''');
       sql.add('and Status      = ' + ''''+'NORMAL'+'''');
       sql.add('order by nome');
       open;
      end;
      FrmRelAniversariantes.qrMes.Caption:= 'ANIVERSARIANTES DO MÊS DE:' + ' ' + '"'+NomeMes(StrToInt(copy(DateToStr(Date),4,2)))+'"';
      FrmRelAniversariantes.QuickRep1.Preview;
    end;
  except

  end;

end;

procedure TfrmAlunos.edConsultarChange(Sender: TObject);
begin
try
  with QyAlunos do
   begin
    close;
    sql.clear;
    sql.add('select * from Tb_Alunos');
    sql.add('where Nome like ' + ''''+edConsultar.Text+'%'+'''');
    open;


    edMatricula.Text:= QyAlunosMatricula.AsString;
    edNome.Text:= QyAlunosNome.AsString;

    dtNascimento.DateTime:= QyAlunosDt_Nasc.AsDateTime;
    dtCadastro.DateTime:= QyAlunosDt_Cadastro.AsDateTime;
    cbSexo.Text:= QyAlunosSexo.AsString;
    edEndereco.Text:= QyAlunosEndereco.AsString;
    edComplemento.Text:= QyAlunosComplemento.AsString;
    edBairro.Text:= QyAlunosBairro.AsString;
    edCidade.Text:= QyAlunosCidade.AsString;
    edCEP.Text:= QyAlunosCEP.AsString;
    edEstado.Text:= QyAlunosEstado.AsString;
    edFone.Text:= QyAlunosTel.AsString;
    edCelular.Text:= QyAlunosCelular.AsString;
    edEmail.Text:= QyAlunosemail.AsString;
    edPai.Text:= QyAlunosPai.AsString;
    edMae.Text:= QyAlunosMae.AsString;
    edCPF.Text:= QyAlunosCPF.AsString;
    edCI.Text:= QyAlunosCI.AsString;
    edDesconto.Text:= QyAlunosDesconto.AsString;
    edBolsista.Text:=QyAlunosBolsista.AsString;
    edNomeResponsavel.Text:= QyAlunosResponsavel.AsString;
    edCpfResponsavel.Text:= QyAlunosCpfResponsavel.AsString;
    edCiResponsavel.Text:= QyAlunosCiResponsavel.AsString;
    edFoneResponsavel.Text:= QyAlunosFoneResponsavel.AsString;

    Image1.Picture.LoadFromFile(QyAlunosFoto.AsString);

    if QyAlunosImprimir.AsString = 'S' then
     chekbox.Checked:= true
    else
     chekbox.Checked:= false;


  end;

except

end;


end;

procedure TfrmAlunos.edConsultarClick(Sender: TObject);
begin
  Habilitar;
end;

procedure TfrmAlunos.rdRelatorioClick(Sender: TObject);
begin
 try
   if rdRelatorio.ItemIndex = 5 then
    begin
     Habilitar;
     LimparEdits;
     edConsultar.SetFocus;
    end;
 except

 end;


end;

procedure TfrmAlunos.spFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmAlunos.HabExecute(Sender: TObject);
begin
  spExcluir.Visible:=true;
end;

end.
