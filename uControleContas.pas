unit uControleContas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Mask, Buttons, DBActns, ActnList, Grids,
  DBGrids, ComCtrls, Db, DBTables;

type
  TFrmControleContas = class(TForm)
    ActionList1: TActionList;
    DataSetCancel1: TDataSetCancel;
    DataSetDelete1: TDataSetDelete;
    DataSetEdit1: TDataSetEdit;
    DataSetInsert1: TDataSetInsert;
    DataSetPost1: TDataSetPost;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edCodConta: TEdit;
    edDescricao: TEdit;
    cbTipoConta: TComboBox;
    dtCadastro: TDateTimePicker;
    Panel4: TPanel;
    Panel5: TPanel;
    spnovo: TSpeedButton;
    spsalvar: TSpeedButton;
    spexcluir: TSpeedButton;
    spcancelar: TSpeedButton;
    TabSheet4: TTabSheet;
    QyFormaPagtoContas: TQuery;
    DsFormaPagtoContas: TDataSource;
    QyFormaPagtoContasDescricao: TStringField;
    QyFormaPagtoContasCodigo: TIntegerField;
    QyFormaPagtoContasCodConta: TIntegerField;
    QyFormaPagtoContasCodFormaPagto: TIntegerField;
    QyFormaPagtoContasParcela: TIntegerField;
    QyFormaPagtoContasSituacao: TStringField;
    QyFormaPagtoContasDtPagto: TDateTimeField;
    QyFormaPagtoContasDtVenc: TDateTimeField;
    QyFormaPagtoContasValor: TFloatField;
    QyFormaPagtoContasDesconto: TFloatField;
    upFormaPagtoContas: TUpdateSQL;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    DtInicio: TDateTimePicker;
    DtFinal: TDateTimePicker;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    DsListaContas: TDataSource;
    QyListaContas: TQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    QyListaContasFormaPagto: TStringField;
    QyListaContasContas: TStringField;
    Panel3: TPanel;
    spInsert: TSpeedButton;
    spEdit: TSpeedButton;
    spPost: TSpeedButton;
    spDelete: TSpeedButton;
    spCancel: TSpeedButton;
    SpeedButton10: TSpeedButton;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    Shape1: TShape;
    Panel1: TPanel;
    DBGrid3: TDBGrid;
    DtInicial: TDateTimePicker;
    DtTermino: TDateTimePicker;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    spimprimir: TSpeedButton;
    QyFormaPagtoContasForma: TStringField;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edquantKeyPress(Sender: TObject; var Key: Char);
    procedure QyFormaPagtoContasAfterCancel(DataSet: TDataSet);
    procedure QyFormaPagtoContasAfterDelete(DataSet: TDataSet);
    procedure QyFormaPagtoContasAfterPost(DataSet: TDataSet);
    procedure QyFormaPagtoContasNewRecord(DataSet: TDataSet);
    procedure spInsertClick(Sender: TObject);
    procedure spEditClick(Sender: TObject);
    procedure spPostClick(Sender: TObject);
    procedure cbTipoContaEnter(Sender: TObject);
    procedure edCodContaKeyPress(Sender: TObject; var Key: Char);
    procedure spCancelClick(Sender: TObject);
    procedure TabSheet2Exit(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure spimprimirClick(Sender: TObject);
    procedure TabSheet3Exit(Sender: TObject);
  private
    { Private declarations }
  public
  quant_c:integer;
  opcao:string;
    { Public declarations }
  end;

var
  FrmControleContas: TFrmControleContas;

implementation

uses ucontas, uDtModule, uformapagtos, uRelListasContasAB;

{$R *.DFM}

procedure TFrmControleContas.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
try
  if key=#13 then
   begin
    SelectNext(sender as Twincontrol,true,true);
    key:= #0;
   end;
except
  abort;
end;
end;      

procedure TFrmControleContas.SpeedButton10Click(Sender: TObject);
begin
try
   frmcontas:=Tfrmcontas.create(self);
   frmcontas.ShowModal;
   if dtmodule.Codigo <> 0 then
    begin
     edCodConta.Text:= IntToStr(dtmodule.Codigo);
     edDescricao.Text:= dtmodule.Descricao_Conta;
     cbTipoConta.Text:= dtmodule.Tipo;
     dtCadastro.DateTime:=StrToDate(dtmodule.Dtcadastro);
     spInsert.Enabled:= true;
     spPost.Enabled:= false;
     spcancel.Enabled:= false;
     spDelete.Enabled:= true;
     spEdit.Enabled:= true;


     with QyFormaPagtoContas do
      begin
       close;
       sql.clear;
       sql.add('select * from Vw_FormaPagtoContas');
       sql.add('where Codigo =' + IntToStr(dtmodule.Codigo));
       open;
      end;
    end;
except
  abort;
end;
end;

procedure TFrmControleContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   QyFormaPagtoContas.close;
   Release;
   FrmControleContas:=nil;
end;

procedure TFrmControleContas.edquantKeyPress(Sender: TObject; var Key: Char);
begin
try
  if key=#13 then
   begin
    SelectNext(sender as Twincontrol,true,true);
    key:= #0;
   end;
except
  abort;
end;
end;

procedure TFrmControleContas.QyFormaPagtoContasAfterCancel(
  DataSet: TDataSet);
begin
  try
    QyFormaPagtoContas.CancelUpdates;
  except
   abort;

  end;

end;

procedure TFrmControleContas.QyFormaPagtoContasAfterDelete(
  DataSet: TDataSet);
begin
  try
    QyFormaPagtoContas.ApplyUpdates;
    QyFormaPagtoContas.CommitUpdates;
  except
   abort;

  end;

end;

procedure TFrmControleContas.QyFormaPagtoContasAfterPost(
  DataSet: TDataSet);
begin
  try
    QyFormaPagtoContas.ApplyUpdates;
    QyFormaPagtoContas.CommitUpdates;
  except
   abort;

  end;

end;

procedure TFrmControleContas.QyFormaPagtoContasNewRecord(
  DataSet: TDataSet);
begin
 try
  try
   //tipo pagamento
   frmformapatgos:= Tfrmformapatgos.create(self);
   with frmformapatgos.qyforma do
   begin
    close;
    sql.clear;
    sql.add('select * from Tb_Formapagto');
    sql.add('order by Descricao');
    open;
   end;

   frmformapatgos.ShowModal;

    if frmformapatgos.ModalResult = idok then
     begin
      dtmodule.CodForma:= frmformapatgos.qyformacodforma.AsString;
      dtmodule.Descricao_Forma:= frmformapatgos.qyformadescricao.AsString;
     end;

  finally
   begin
    frmformapatgos.qyforma.close;
    frmformapatgos.Release;
    frmformapatgos:= nil;
   end;
  end;

   QyFormaPagtoContasCodigo.AsInteger:= StrToInt(edCodConta.Text);
   QyFormaPagtoContasCodConta.AsInteger:= dtmodule.codconta;
   QyFormaPagtoContasValor.AsFloat:= 0;
   QyFormaPagtoContasDesconto.AsFloat:=0;
   QyFormaPagtoContasSituacao.AsString:= 'EM ABERTA';
   QyFormaPagtoContasCodFormaPagto.AsInteger:= StrToInt(dtmodule.CodForma);
   QyFormaPagtoContasForma.AsString:= dtmodule.Descricao_Forma;
   QyFormaPagtoContasDtVenc.AsDateTime:= dtCadastro.DateTime;
   QyFormaPagtoContasDtPagto.AsDateTime:= dtCadastro.DateTime;
   QyFormaPagtoContasParcela.AsInteger:=1;



  except

  end;

end;

procedure TFrmControleContas.spInsertClick(Sender: TObject);
begin
  try
    //*** habilitar botoes ***///
    spInsert.Enabled:= false;
    spPost.Enabled:= true;
    spcancel.Enabled:= true;
    spDelete.Enabled:= false;
    spEdit.Enabled:= false;
    edCodConta.Text:= '';
    edDescricao.Text:= '';
    cbTipoConta.Text:= '';
    dtCadastro.DateTime:=Date;
    edDescricao.SetFocus;
    opcao:='I';

    with FrmControleContas.QyFormaPagtoContas do
    begin
     close;
     sql.clear;
     sql.add('select * from Vw_FormaPagtoContas');
     sql.add('where Codigo = 0');
     open
    end;

    with dtmodule.QySql do
     begin
      close;
      sql.clear;
      sql.add('select max(codigo) as maior from Tb_Controle_Contas');
      open;

      edCodConta.Text:= IntToStr(dtmodule.QySql.FieldByName('maior').AsInteger+1);
      close;
     end;

    
  except

  end;

end;

procedure TFrmControleContas.spEditClick(Sender: TObject);
begin
 try
    spInsert.Enabled:= true;
    spPost.Enabled:= true;
    spcancel.Enabled:= true;
    spDelete.Enabled:= false;
    spEdit.Enabled:= false;
    opcao:='A';

 except

 end;

end;

procedure TFrmControleContas.spPostClick(Sender: TObject);
begin
 if opcao = 'I' then
 begin
  try
     if edDescricao.Text = '' then
     begin
      Application.MessageBox('Campo "DESCRIÇÃO" esta vazio','Informações.',mb_ok+mb_iconinformation);
      abort;
     end;

    if cbTipoConta.Text = '' then
     begin
      Application.MessageBox('Campo "Tipo Conta" esta vazio','Informações.',mb_ok+mb_iconinformation);
      abort;
     end;

    with dtmodule.QySql do
     begin
      close;
      sql.clear;
      sql.add('Select * from Tb_Contas');
      sql.add('Where Descricao = ' + ''''+cbTipoConta.Text+'''');
      open;

      dtmodule.codconta:= dtmodule.QySql.FieldByName('CodConta').AsInteger;
      close;
     end;

    try
      if not dtmodule.dbAcademico.InTransaction then
       dtmodule.dbAcademico.StartTransaction;

      with dtmodule.QySql do
       begin
        close;
        sql.clear;
        sql.add('Insert into Tb_Controle_Contas');
        sql.add('Values' + '('+edCodConta.Text+','+IntToStr(dtmodule.codconta)+','+''''+edDescricao.Text+''''+','+''''+DateToStr(dtCadastro.DateTime)+''''+')');
        ExecSQL;
       end;

      dtmodule.dbAcademico.Commit;
      Application.MessageBox('Conta cadastrada com sucesso','Informações.',mb_ok+mb_iconinformation);
      QyFormaPagtoContas.Insert;
      spInsert.Enabled:= true;
      spPost.Enabled:= false;
      spcancel.Enabled:= false;
      spDelete.Enabled:= true;
      spEdit.Enabled:= true;

    except
      dtmodule.dbAcademico.Rollback;
      Application.MessageBox('Erro ao cadastrar essa "Conta"','Informações.',mb_ok+mb_iconerror);

    end;


  except

  end;
 end;


end;

procedure TFrmControleContas.cbTipoContaEnter(Sender: TObject);
 var
  i:Integer;
begin
  try
    cbTipoConta.Clear;
    with dtmodule.QySql do
     begin
      close;
      sql.clear;
      sql.add('Select * from Tb_Contas');
      sql.add('Order by Descricao');
      open;
     end;

    for i:= 0 to dtmodule.QySql.RecordCount-1 do
     begin
      cbTipoConta.Items.Add(dtmodule.QySql.FieldByname('Descricao').AsString);
      dtmodule.QySql.Next;
     end;
       dtmodule.QySql.close;
  except
   abort;
  end;
end;

procedure TFrmControleContas.edCodContaKeyPress(Sender: TObject;
  var Key: Char);

  begin
  if key=#13 then
  begin
  SelectNext(sender as Twincontrol,true,true);
  key:= #0;
  end;

end;

procedure TFrmControleContas.spCancelClick(Sender: TObject);
begin
    //*** habilitar botoes ***///
    spInsert.Enabled:= true;
    spPost.Enabled:= false;
    spcancel.Enabled:= false;
    spDelete.Enabled:= true;
    spEdit.Enabled:= true;
    edCodConta.Text:= '';
    edDescricao.Text:= '';
    cbTipoConta.Text:= '';
    dtCadastro.DateTime:=Date;
end;

procedure TFrmControleContas.TabSheet2Exit(Sender: TObject);
begin
try
  with QyListaContas do
   begin
    close;
    sql.clear;
    sql.add('select * from Vw_ListasContas');
    sql.add('where Codigo = -1');
    open;
   end;
 except
   abort;
 end;
end;

procedure TFrmControleContas.TabSheet2Show(Sender: TObject);
begin
  DtInicio.DateTime:=Date;
  DtFinal.DateTime:= Date;

end;

procedure TFrmControleContas.SpeedButton1Click(Sender: TObject);
begin
  try
   with QyListaContas do
   begin
    close;
    sql.clear;
    sql.add('select * from Vw_ListasContas');
    sql.add('where DtVenc Between ' + ''''+DateToStr(DtInicio.DateTime)+'''' + 'and' + ''''+DateToStr(DtFinal.DateTime)+'''');
    sql.add('And Situacao = ' + ''''+'EM ABERTA'+'''');
    sql.add('order by Contas');
    open;
   end;
  except
    abort;
  end;

end;

procedure TFrmControleContas.SpeedButton2Click(Sender: TObject);
begin
  try
   with QyListaContas do
   begin
    close;
    sql.clear;
    sql.add('select * from Vw_ListasContas');
    sql.add('where DtPagto Between ' + ''''+DateToStr(DtInicial.DateTime)+'''' + 'and' + ''''+DateToStr(DtTermino.DateTime)+'''');
    sql.add('And Situacao = ' + ''''+'PAGO'+'''');
    sql.add('order by Contas');
    open;
   end;
  except
    abort;
  end;

end;

procedure TFrmControleContas.TabSheet3Show(Sender: TObject);
begin
try
  DtInicial.DateTime:=Date;
  DtTermino.DateTime:= Date;

except

end;

end;

procedure TFrmControleContas.spimprimirClick(Sender: TObject);
begin
  try
    FrmRelListasContasPG:=TFrmRelListasContasPG.create(self);
    with FrmRelListasContasPG.QyListaContas do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_ListasContas');
      sql.add('where DtVenc Between ' + ''''+DateToStr(DtInicio.DateTime)+'''' + 'and' + ''''+DateToStr(DtFinal.DateTime)+'''');
      sql.add('And Situacao = ' + ''''+'EM ABERTA'+'''');
      sql.add('order by Contas');
      open;
     end;

    FrmRelListasContasPG.lblperiodo.Caption:= 'Período: '+ 'DE' + ' '+ DateToStr(DtInicio.DateTime) + ' ' + 'A' + ' ' + DateToStr(DtFinal.DateTime);
    FrmRelListasContasPG.QuickRep1.Preview;

  except
     abort;
  end;

end;

procedure TFrmControleContas.TabSheet3Exit(Sender: TObject);
begin
 try
  with QyListaContas do
   begin
    close;
    sql.clear;
    sql.add('select * from Vw_ListasContas');
    sql.add('where Codigo = -1');
    open;
   end;
 except
   abort;
 end;
end;

end.
