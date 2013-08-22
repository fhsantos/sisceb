unit uFinanceiro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Buttons, StdCtrls, Grids, DBGrids, Db, DBTables, ActnList,
  Menus;

type
  TfrmFinanceiro = class(TForm)
    Panel4: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    spConsultar: TSpeedButton;
    spExtornar: TSpeedButton;
    spSalvar: TSpeedButton;
    spAlterar: TSpeedButton;
    spRelatorio: TSpeedButton;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    DBGrid1: TDBGrid;
    DsFinanceiro: TDataSource;
    QyFinanceiro: TQuery;
    QyFinanceiroMatricula: TIntegerField;
    QyFinanceiroParcela: TIntegerField;
    QyFinanceiroAno: TIntegerField;
    QyFinanceiroDt_venc: TDateTimeField;
    QyFinanceiroDt_pagto: TDateTimeField;
    QyFinanceiroValor: TFloatField;
    QyFinanceiroSituacao: TStringField;
    QyFinanceiroCodForma: TIntegerField;
    QyFinanceiroCodSerie: TIntegerField;
    QyFinanceiroDias: TIntegerField;
    ActionList1: TActionList;
    Consultar: TAction;
    QyFinanceiroMulta: TFloatField;
    QyFinanceiroTotal: TIntegerField;
    spFechar: TSpeedButton;
    sp_insert_Tb_MovimentoCaixa: TStoredProc;
    sp_insert_Tb_Informacao: TStoredProc;
    sp_update_Tb_Informacao: TStoredProc;
    sp_delete_Tb_Informacao: TStoredProc;
    ActionList2: TActionList;
    Hab: TAction;
    PopSenha: TPopupMenu;
    Liberar1: TMenuItem;
    VisibleTrue: TAction;
    Timer1: TTimer;
    Habilitar: TAction;
    pnhoras: TPanel;
    pnData: TPanel;
    Panel11: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edMatricula: TEdit;
    edNome: TEdit;
    Label3: TLabel;
    edSerie: TEdit;
    edNivel: TEdit;
    Label4: TLabel;
    rdTipo: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spConsultarClick(Sender: TObject);
    procedure spSalvarClick(Sender: TObject);
    procedure spExtornarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure spRelatorioClick(Sender: TObject);
    procedure QyFinanceiroCalcFields(DataSet: TDataSet);
    procedure spFecharClick(Sender: TObject);
    procedure HabExecute(Sender: TObject);
    procedure VisibleTrueExecute(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure HabilitarExecute(Sender: TObject);
  private
    { Private declarations }
  procedure Atualizar;
  procedure GerarCod;
  public
    { Public declarations }
  end;

var
  frmFinanceiro: TfrmFinanceiro;

implementation

uses uDtModule, uConsultaMatricula, uSenhaCaixa, uOpcaoFinanceiro,
  uRelDebitos, uFormaPagto;

{$R *.DFM}

procedure TfrmFinanceiro.GerarCod;
 var
  cod:integer;
begin
  try

   with dtModule.QySql do
    begin
     close;
     sql.clear;
     sql.add('select max(CodMov) as maior from Tb_MovimentoCaixa');
     open;

     cod:= (dtModule.QySql.fieldByName('maior').AsInteger+1);
     close;

     dtModule.CodMov := cod;
    end;

  except
  end;
end;

procedure TfrmFinanceiro.Atualizar;
begin
 try
    with QyFinanceiro do
     begin
      close;
      sql.clear;
      sql.add('select * from Tb_Carne');
      sql.add('where Matricula = ' + edMatricula.Text);
      sql.add('and   CodSerie  = ' + dtModule.CodSerie);
//      sql.add('and   Ano       = ' + dtModule.Ano);
      sql.add('order by Parcela');
      open;
     end;
 except
 end;
end;

procedure TfrmFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QyFinanceiro.close;
  Release;
  frmFinanceiro:= nil;
end;

procedure TfrmFinanceiro.spConsultarClick(Sender: TObject);
begin
 try
  frmConsultaMatricula:=TfrmConsultaMatricula.create(self);
  frmConsultaMatricula.ShowModal;

  if dtModule.Matricula <> '' then
   begin
    edMatricula.Text:= dtModule.Matricula;
    edNome.Text := dtModule.Nome;
    edSerie.Text    := dtModule.Serie;
    edNivel.Text:= dtModule.Nivel;
    Atualizar;
   end;
 except
 end
end;

procedure TfrmFinanceiro.spSalvarClick(Sender: TObject);
 var
  i:integer;
begin
 try
  if QyFinanceiroSituacao.AsString = 'PAGO' then
   begin
    Application.MessageBox('Parcela consta como "PAGO"','Atenção',MB_OK+MB_ICONINFORMATION);
    SysUtils.Abort;
   end;

  if edMatricula.Text = '' then
  begin
   Application.MessageBox('Informe a "Matrícula"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  frmFormaPagto:=TfrmFormaPagto.create(self);
  frmFormaPagto.edParc1.Text:= QyFinanceiroParcela.AsString;
  frmFormaPagto.edParc2.Text:= QyFinanceiroParcela.AsString;
  frmFormaPagto.edValor.Text:= FormatFloat('##.00',QyFinanceiroValor.AsFloat);
  frmFormaPagto.cbSituacao.Text:= 'PAGO';
  frmFormaPagto.ShowModal;

  if dtModule.FormaPagto = '' then
  begin
   Application.MessageBox('"Forma de pagamento" não foi informada!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;


  try
   if not dtModule.dbAcademico.InTransaction then
    dtModule.dbAcademico.StartTransaction;

  for i := dtModule.Parc1 to dtModule.Parc2 do
  begin
   with QyFinanceiro do
    begin
     close;
     sql.clear;
     sql.add('update Tb_Carne');
     sql.add('set Situacao = ' + ''''+dtModule.Situacao+'''');
     sql.add(',CodForma = ' + dtModule.CodForma);
     sql.add(',Dt_pagto = ' + ''''+dtModule.DtPagto+'''');
     sql.add(',Valor = ' + FloatToStr(dtModule.Valor));
     sql.add('where Matricula = ' + dtModule.Matricula);
     sql.add('and   CodSerie  = ' + dtModule.CodSerie);
     sql.add('and   Parcela   = ' + IntToStr(i));
     sql.add('and   Ano = ' + dtModule.Ano);
     ExecSQL;
    end;

//   GerarCod;
{   with sp_insert_Tb_MovimentoCaixa do
    begin
     ParamByName('@CodMov').AsInteger           := dtModule.CodMov;
     ParamByName('@CodDescricao').AsInteger     := 8;
     ParamByName('@DtPagto').AsDateTime         := StrToDate(dtModule.DtPagto);
     ParamByName('@Valor').AsFloat              := StrToFloat(FormatFloat('##.00',dtModule.Valor));
     ParamByName('@Obs').AsString               := edNome.Text + ' ' + 'Parc.' + ' ' + IntToStr(i);
     ParamByName('@Status').AsString            := 'PAGO';
     Prepare;
     ExecProc;
     UnPrepare;
    end;}
  end;
   dtModule.dbAcademico.Commit;
   Application.MessageBox('Parcela paga com sucesso!','Informações',MB_OK+MB_ICONINFORMATION);
   Atualizar;


  except
   dtModule.dbAcademico.Rollback;
   Application.MessageBox('Erro ao pagar essa parcela!','Informações',MB_OK+MB_ICONINFORMATION);
  end;
 except
  abort;
 end;
end;

procedure TfrmFinanceiro.spExtornarClick(Sender: TObject);
begin
  if edMatricula.Text = '' then
  begin
   Application.MessageBox('Informe a "Matrícula"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  try
   if not dtModule.dbAcademico.InTransaction then
    dtModule.dbAcademico.StartTransaction;

   with QyFinanceiro do
    begin
     close;
     sql.clear;
     sql.add('update Tb_Carne');
     sql.add('set Situacao = ' + ''''+'EM ABERTA'+'''');
     sql.add(',CodForma = ' + '0');
     sql.add(',Dt_pagto = ' + ''''+DateToStr(Date)+'''');
     sql.add('where Matricula = ' + dtModule.Matricula);
     sql.add('and   CodSerie  = ' + dtModule.CodSerie);
     sql.add('and   Parcela   = ' + IntToStr(dtModule.Parc1));
     sql.add('and   Ano = ' + dtModule.Ano);
     ExecSQL;
    end;

   dtModule.dbAcademico.Commit;
   Application.MessageBox('Parcela "EXTORNADA" com sucesso!','Informações',MB_OK+MB_ICONINFORMATION);
   Atualizar;

  except
   dtModule.dbAcademico.Rollback;
   Application.MessageBox('Erro ao "EXTORNAR" essa parcela!','Informações',MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TfrmFinanceiro.DBGrid1CellClick(Column: TColumn);
begin
  edMatricula.Text:= QyFinanceiroMatricula.AsString;
  dtModule.Parc1:=   QyFinanceiroParcela.AsInteger;
  dtModule.Parc2:=   QyFinanceiroParcela.AsInteger;
  dtModule.CodSerie:=   QyFinanceiroCodSerie.AsString;
  dtModule.Ano:=   QyFinanceiroAno.AsString;

  spSalvar.Enabled := true;
  spExtornar.Enabled := true;
end;

procedure TfrmFinanceiro.spRelatorioClick(Sender: TObject);
begin
  try
    if rdTipo.ItemIndex = 0 then
     begin
      frmOpcaoFinanceiro:=TfrmOpcaoFinanceiro.create(self);
      frmOpcaoFinanceiro.showmodal;
     end;

    if rdTipo.ItemIndex = 1 then
     begin
      frmRelDebitos:= TfrmRelDebitos.create(self);
      with frmRelDebitos.QyMaster do
       begin
        close;
        sql.clear;
        sql.add('select * from Vw_AlunosMatricula');
        sql.add('where Matricula = ' + edMatricula.Text);
        sql.add('and   Serie  = ' + ''''+edSerie.Text+'''');
        sql.add('and   Ano       = ' + dtModule.Ano);
        open;
       end;

      with frmRelDebitos.QyFinanceiro do
       begin
        close;
        sql.clear;
        sql.add('select * from Tb_Carne');
        sql.add('where Matricula = ' + edMatricula.Text);
        sql.add('and   CodSerie  = ' + dtModule.CodSerie);
        sql.add('and   Ano       = ' + dtModule.Ano);
        sql.add('order by Parcela');
        open;
       end;
      frmRelDebitos.QuickRep2.Preview;

     end;
  except
   abort;
  end;


end;

procedure TfrmFinanceiro.QyFinanceiroCalcFields(DataSet: TDataSet);
 var
  DiasAtraso:String;
  Valor,VlMulta:Real;

  dia:Real;
  MulTotal:Real;
  MulDiaria,MulMensal:Real;

begin
  try
   if (QyFinanceiroParcela.AsInteger = 1) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 2) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 3) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 4) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 5) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 6) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 7) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 8) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 9) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 10) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 11) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 12) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 5)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;



  except

  end;

end;

procedure TfrmFinanceiro.spFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFinanceiro.HabExecute(Sender: TObject);
begin
  spExtornar.Visible:= true;
end;

procedure TfrmFinanceiro.VisibleTrueExecute(Sender: TObject);
begin
  spSalvar.Visible:= true;
  spExtornar.Visible:= true;
end;

procedure TfrmFinanceiro.Timer1Timer(Sender: TObject);
begin
  try
    pnhoras.Caption:= 'São exatamente:' + ' ' + TimeToStr(time);
    pnData.Caption:= 'Hoje é:' + ' ' + DateToStr(Date);
  except

  end;

end;

procedure TfrmFinanceiro.HabilitarExecute(Sender: TObject);
begin
  spSalvar.Enabled:= true;
  spExtornar.Enabled:= true;

end;

end.
