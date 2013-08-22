unit uDescricao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, Db, DBTables, Mask, DBCtrls,
  DBActns, ActnList, ComCtrls;

type
  TfrmDescricao = class(TForm)
    Panel1: TPanel;
    Label21: TLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    spNovo: TSpeedButton;
    spExcluir: TSpeedButton;
    spSalvar: TSpeedButton;
    spAlterar: TSpeedButton;
    DBGrid1: TDBGrid;
    DsMaterial: TDataSource;
    QyMaterial: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    spFechar: TSpeedButton;
    spConsultar: TSpeedButton;
    Label6: TLabel;
    edCodDescricao: TEdit;
    edNome: TEdit;
    sp_insert_Tb_Descricao: TStoredProc;
    sp_update_Tb_Descricao: TStoredProc;
    sp_delete_Tb_Descricao: TStoredProc;
    QyMaterialCodDescricao: TIntegerField;
    QyMaterialDescricao: TStringField;
    QyMaterialStatus: TStringField;
    cbTipo: TComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spFecharClick(Sender: TObject);
    procedure spNovoClick(Sender: TObject);
    procedure edCodDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure spSalvarClick(Sender: TObject);
    procedure spAlterarClick(Sender: TObject);
    procedure spConsultarClick(Sender: TObject);
    procedure spExcluirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  procedure LimparEdits;
  procedure Habilitar;
  procedure Desabilitar;
  procedure Atualizar;

  public
    { Public declarations }
  end;

var
  frmDescricao: TfrmDescricao;

implementation

uses uDtModule;

{$R *.DFM}

procedure TfrmDescricao.Desabilitar;
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

procedure TfrmDescricao.Atualizar;
begin
 try
  with QyMaterial do
   begin
    close;
    sql.Clear;
    sql.add('select * from Tb_Descricao');
    sql.add('order by Descricao');
    open;
   end;
 except

 end;

end;

procedure TfrmDescricao.LimparEdits;
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

procedure TfrmDescricao.Habilitar;
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

procedure TfrmDescricao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
   QyMaterial.close;
   Release;
   frmDescricao:=nil;
  except
  end;
end;

procedure TfrmDescricao.spFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDescricao.spNovoClick(Sender: TObject);
 var
   cod:integer;
begin
try
   Habilitar;
   LimparEdits;

   Tag:=1;

   with dtModule.QySql do
    begin
     close;
     sql.clear;
     sql.add('select max(CodDescricao) as maior from Tb_Descricao');
     open;

     cod:= (dtModule.QySql.fieldByName('maior').AsInteger+1);
     close;

     edCodDescricao.Text := FormatFloat('00000',cod);
    end;


   edNome.SetFocus;
   spSalvar.Enabled:=true;
except
end;

end;

procedure TfrmDescricao.edCodDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmDescricao.spSalvarClick(Sender: TObject);
begin
 try
  if (Trim(edNome.Text) = '') then
  begin
   Application.MessageBox('Informe o "Nome do Material"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if (Trim(cbTipo.Text) = '') then
  begin
   Application.MessageBox('Informe o "Tipo"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if Tag = 1 then
  begin
   try
    if not dtModule.dbAcademico.InTransaction then
     dtModule.dbAcademico.StartTransaction;


     with sp_insert_Tb_Descricao do
      begin
       ParamByName('@CodDescricao').AsInteger     := StrToInt(edCodDescricao.Text);
       ParamByName('@Descricao').AsString         := edNome.Text;
       ParamByName('@Status').AsString            := cbTipo.Text;
       Prepare;
       ExecProc;
       UnPrepare;
      end;

     dtModule.dbAcademico.Commit;
     Application.MessageBox('Registro gravado com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
     Desabilitar;
     Atualizar;
     spSalvar.Enabled:=false;


   except
     dtModule.dbAcademico.Rollback;
     Application.MessageBox('Erro ao gravar registro','Informações',mb_ok+MB_ICONERROR);

   end;
  end;

  if Tag = 2 then
  begin
   try
    if not dtModule.dbAcademico.InTransaction then
     dtModule.dbAcademico.StartTransaction;


     with sp_update_Tb_Descricao do
      begin
       ParamByName('@CodDescricao').AsInteger     := StrToInt(edCodDescricao.Text);
       ParamByName('@Descricao').AsString         := edNome.Text;
       ParamByName('@Status').AsString            := cbTipo.Text;
       Prepare;
       ExecProc;
       UnPrepare;
      end;

     dtModule.dbAcademico.Commit;
     Application.MessageBox('Registro Alterado com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
     Desabilitar;
     Atualizar;
     spSalvar.Enabled:=false;


   except
     dtModule.dbAcademico.Rollback;
     Application.MessageBox('Erro ao Alterar registro','Informações',mb_ok+MB_ICONERROR);

   end;

  end;
 except
 end;
end;

procedure TfrmDescricao.spAlterarClick(Sender: TObject);
begin
 try
   Tag:=2;
   Habilitar;
   spSalvar.Enabled:=true;
 except

 end;
end;

procedure TfrmDescricao.spConsultarClick(Sender: TObject);
begin
  Tag:=0;
  Habilitar;

end;

procedure TfrmDescricao.spExcluirClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja excluir esse Registro?','Informações',mb_yesno+mb_iconexclamation+MB_DEFBUTTON2) = idyes then
    begin
     try
       if not dtModule.dbAcademico.InTransaction then
        dtModule.dbAcademico.StartTransaction;

       with sp_delete_Tb_Descricao do
        begin
         ParamByName('@CodDescricao').AsInteger    := StrToInt(edCodDescricao.Text);
         Prepare;
         ExecProc;
         UnPrepare;
        end;

       dtModule.dbAcademico.Commit;
       Application.MessageBox('Registro excluido com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
       LimparEdits;
       Desabilitar;
       Atualizar;

     except
       dtModule.dbAcademico.Rollback;
       Application.MessageBox('Erro ao excluir registro','Informações',mb_ok+MB_ICONERROR);

     end;

    end;

end;

procedure TfrmDescricao.DBGrid1CellClick(Column: TColumn);
begin
  try
    edCodDescricao.Text:=    FormatFloat('00000',QyMaterialCodDescricao.AsInteger);
    edNome.Text:=            QyMaterialDescricao.AsString;
    cbTipo.Text:=            QyMaterialStatus.AsString;
  except
   abort;

  end;

end;

end.
