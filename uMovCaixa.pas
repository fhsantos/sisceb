unit uMovCaixa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, Db, DBTables, Mask, DBCtrls,
  DBActns, ActnList, ComCtrls;

type
  TfrmMovCaixa = class(TForm)
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
    spCancelar: TSpeedButton;
    Label6: TLabel;
    edCodDescricao: TEdit;
    edConta: TEdit;
    sp_insert_Tb_MovimentoCaixa: TStoredProc;
    sp_update_Tb_MovimentoCaixa: TStoredProc;
    sp_delete_Tb_MovimentoCaixa: TStoredProc;
    QyMaterialCodMov: TIntegerField;
    QyMaterialCodDescricao: TIntegerField;
    QyMaterialDtPagto: TDateTimeField;
    QyMaterialValor: TFloatField;
    QyMaterialObs: TStringField;
    QyMaterialSituacao: TStringField;
    QyMaterialConta: TStringField;
    QyMaterialTipo: TStringField;
    edCodMov: TEdit;
    edObs: TEdit;
    edTipo: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    cbSituacao: TComboBox;
    Label5: TLabel;
    dtPagto: TDateTimePicker;
    Label7: TLabel;
    Bevel1: TBevel;
    edValor: TEdit;
    Label8: TLabel;
    spConsultar: TSpeedButton;
    spRelatorio: TSpeedButton;
    dtFinal: TDateTimePicker;
    dtInicio: TDateTimePicker;
    Label9: TLabel;
    Label10: TLabel;
    sp_insert_Tb_Informacao: TStoredProc;
    sp_update_Tb_Informacao: TStoredProc;
    sp_delete_Tb_Informacao: TStoredProc;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spFecharClick(Sender: TObject);
    procedure spNovoClick(Sender: TObject);
    procedure edCodDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure spSalvarClick(Sender: TObject);
    procedure spAlterarClick(Sender: TObject);
    procedure spCancelarClick(Sender: TObject);
    procedure spExcluirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure spConsultarClick(Sender: TObject);
    procedure spRelatorioClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  procedure LimparEdits;
  procedure Habilitar;
  procedure Desabilitar;
  procedure Atualizar;
  procedure Salvar;
  procedure Excluir;
  procedure Alterar;
  procedure Cancelar;
  procedure Novo;

  public
    { Public declarations }
  end;

var
  frmMovCaixa: TfrmMovCaixa;

implementation

uses uDtModule, uListaContas, uRelListasContasAB;


{$R *.DFM}
procedure TfrmMovCaixa.Novo;
begin
   spSalvar.Enabled:=true;
   spNovo.Enabled:= false;
   spAlterar.Enabled:= false;
   spCancelar.Enabled:= true;
   spExcluir.Enabled:= false;
end;
procedure TfrmMovCaixa.Salvar;
begin
   spSalvar.Enabled:=false;
   spNovo.Enabled:= true;
   spAlterar.Enabled:= true;
   spCancelar.Enabled:= false;
   spExcluir.Enabled:= true;
end;
procedure TfrmMovCaixa.Excluir;
begin
   spSalvar.Enabled:=false;
   spNovo.Enabled:= true;
   spAlterar.Enabled:= false;
   spCancelar.Enabled:= true;
   spExcluir.Enabled:= false;
end;
procedure TfrmMovCaixa.Cancelar;
begin
   spSalvar.Enabled:=false;
   spNovo.Enabled:= true;
   spAlterar.Enabled:= true;
   spCancelar.Enabled:= false;
   spExcluir.Enabled:= true;
end;
procedure TfrmMovCaixa.Alterar;
begin
   spSalvar.Enabled:=true;
   spNovo.Enabled:= true;
   spAlterar.Enabled:= false;
   spCancelar.Enabled:= true;
   spExcluir.Enabled:= true;
end;
procedure TfrmMovCaixa.Desabilitar;
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

procedure TfrmMovCaixa.Atualizar;
begin
 try
  with QyMaterial do
   begin
    close;
    sql.Clear;
    sql.add('select * from Vw_MovCaixa');
    sql.add('where DtPagto Between ' + ''''+DateToStr(DtInicio.DateTime)+'''' + 'and' + ''''+DateToStr(DtFinal.DateTime)+'''');
    sql.add('order by Conta');
    open;
   end;
 except

 end;

end;

procedure TfrmMovCaixa.LimparEdits;
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

procedure TfrmMovCaixa.Habilitar;
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

procedure TfrmMovCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
   QyMaterial.close;
   Release;
   frmMovCaixa:=nil;
  except
  end;
end;

procedure TfrmMovCaixa.spFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmMovCaixa.spNovoClick(Sender: TObject);
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
     sql.add('select max(CodMov) as maior from Tb_MovimentoCaixa');
     open;

     cod:= (dtModule.QySql.fieldByName('maior').AsInteger+1);
     close;

     edCodMov.Text := FormatFloat('00000',cod);
    end;

   frmListaContas:=TfrmListaContas.create(self);
   frmListaContas.ShowModal;

   if dtModule.Tag = 2 then
    begin
     edCodDescricao.Text:= IntToStr(dtModule.CodDescricao);
     edConta.Text       := dtModule.Conta;
     edTipo.Text        := dtModule.Tipo;
    end;

   Novo;
   edObs.SetFocus;
except
end;

end;

procedure TfrmMovCaixa.edCodDescricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmMovCaixa.spSalvarClick(Sender: TObject);
begin
 try
  if (Trim(edObs.Text) = '') then
  begin
   Application.MessageBox('Informe a "Observação!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if (Trim(cbSituacao.Text) = '') then
  begin
   Application.MessageBox('Informe a "Situação"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if (Trim(edValor.Text) = '') then
  begin
   Application.MessageBox('Informe o "Valor"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if Tag = 1 then
  begin
   try
    if not dtModule.dbAcademico.InTransaction then
     dtModule.dbAcademico.StartTransaction;


     with sp_insert_Tb_MovimentoCaixa do
      begin
       ParamByName('@CodMov').AsInteger           := StrToInt(edCodMov.Text);
       ParamByName('@CodDescricao').AsInteger     := StrToInt(edCodDescricao.Text);
       ParamByName('@DtPagto').AsDateTime         := dtPagto.DateTime;
       ParamByName('@Valor').AsFloat              := StrToFloat(FormatFloat('##.00',StrToFloat(edValor.Text)));
       ParamByName('@Obs').AsString               := edObs.Text;
       ParamByName('@Status').AsString            := cbSituacao.Text;
       Prepare;
       ExecProc;
       UnPrepare;
      end;

     dtModule.dbAcademico.Commit;
     Application.MessageBox('Registro gravado com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
     Desabilitar;
     Atualizar;
     Salvar;


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


     with sp_update_Tb_MovimentoCaixa do
      begin
       ParamByName('@CodMov').AsInteger           := StrToInt(edCodMov.Text);
       ParamByName('@CodDescricao').AsInteger     := StrToInt(edCodDescricao.Text);
       ParamByName('@DtPagto').AsDateTime         := dtPagto.DateTime;
       ParamByName('@Valor').AsFloat              := StrToFloat(FormatFloat('##.00',StrToFloat(edValor.Text)));
       ParamByName('@Obs').AsString               := edObs.Text;
       ParamByName('@Status').AsString            := cbSituacao.Text;
       Prepare;
       ExecProc;
       UnPrepare;
      end;

     dtModule.dbAcademico.Commit;
     Application.MessageBox('Registro Alterado com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
     Desabilitar;
     Atualizar;
     Salvar;


   except
     dtModule.dbAcademico.Rollback;
     Application.MessageBox('Erro ao Alterar registro','Informações',mb_ok+MB_ICONERROR);

   end;

  end;
 except
 end;
end;

procedure TfrmMovCaixa.spAlterarClick(Sender: TObject);
begin
 try
   Tag:=2;
   Habilitar;
   Alterar;
 except

 end;
end;

procedure TfrmMovCaixa.spCancelarClick(Sender: TObject);
begin
  Tag:=0;
  Habilitar;
  Cancelar;
end;

procedure TfrmMovCaixa.spExcluirClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja excluir esse Registro?','Informações',mb_yesno+mb_iconexclamation+MB_DEFBUTTON2) = idyes then
    begin
     try
       if not dtModule.dbAcademico.InTransaction then
        dtModule.dbAcademico.StartTransaction;

       with sp_delete_Tb_MovimentoCaixa do
        begin
         ParamByName('@CodMov').AsInteger       := StrToInt(edCodMov.Text);
         ParamByName('@CodDescricao').AsInteger := StrToInt(edCodDescricao.Text);
         ParamByName('@DtPagto').AsDateTime     := dtPagto.DateTime;
         Prepare;
         ExecProc;
         UnPrepare;
        end;

       dtModule.dbAcademico.Commit;
       Application.MessageBox('Registro excluido com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
       LimparEdits;
       Desabilitar;
       Excluir;
       Atualizar;

     except
       dtModule.dbAcademico.Rollback;
       Application.MessageBox('Erro ao excluir registro','Informações',mb_ok+MB_ICONERROR);

     end;

    end;

end;

procedure TfrmMovCaixa.DBGrid1CellClick(Column: TColumn);
begin
  try
    edCodDescricao.Text := FormatFloat('00000',QyMaterialCodDescricao.AsInteger);
    edCodMov.Text       := FormatFloat('00000',QyMaterialCodMov.AsInteger);
    edObs.Text          := QyMaterialObs.AsString;
    edConta.Text        := QyMaterialConta.AsString;
    edTipo.Text         := QyMaterialTipo.AsString;
    cbSituacao.Text     := QyMaterialSituacao.AsString;

    dtPagto.DateTime    := QyMaterialDtPagto.AsDateTime;

    edValor.Text        := FormatFloat('##.00',QyMaterialValor.AsInteger);
    Salvar;
  except
   abort;

  end;

end;

procedure TfrmMovCaixa.spConsultarClick(Sender: TObject);
begin
  Atualizar;
end;

procedure TfrmMovCaixa.spRelatorioClick(Sender: TObject);
begin
  try
    FrmRelListasContasPG:=TFrmRelListasContasPG.create(self);
    with FrmRelListasContasPG.QyListaContas do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_MovCaixa');
      sql.add('where DtPagto Between ' + ''''+DateToStr(DtInicio.DateTime)+'''' + 'and' + ''''+DateToStr(DtFinal.DateTime)+'''');
      sql.add('And Situacao = ' + ''''+'PAGO'+'''');
      sql.add('order by DtPagto');
      open;
     end;

    FrmRelListasContasPG.lblperiodo.Caption:= 'Período: '+ 'DE' + ' '+ DateToStr(DtInicio.DateTime) + ' ' + 'A' + ' ' + DateToStr(DtFinal.DateTime);
    FrmRelListasContasPG.QuickRep1.Preview;

  except
     abort;
  end;


end;

procedure TfrmMovCaixa.FormShow(Sender: TObject);
begin
 try
   dtPagto.DateTime:=date;
   dtFinal.DateTime:=date;
   dtInicio.DateTime:=date;
 except

 end;

end;

end.
