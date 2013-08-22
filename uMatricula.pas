unit uMatricula;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, Db, DBTables, ComCtrls,
  DBCtrls, ActnList;

type
  TfrmMatricula = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    spNovo: TSpeedButton;
    spExcluir: TSpeedButton;
    spSalvar: TSpeedButton;
    spAlterar: TSpeedButton;
    spRelatorio: TSpeedButton;
    DsDisciplinas: TDataSource;
    QyDisciplinas: TQuery;
    QyDisciplinasMatricula: TIntegerField;
    QyDisciplinasCodDisciplina: TIntegerField;
    QyDisciplinasAno: TIntegerField;
    QyDisciplinasTurma: TStringField;
    QyDisciplinasDisciplina: TStringField;
    Panel3: TPanel;
    Panel4: TPanel;
    PageControl1: TPageControl;
    tbMatricula: TTabSheet;
    TabSheet2: TTabSheet;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Bevel8: TBevel;
    lblNome: TLabel;
    Label6: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    edMatricula: TEdit;
    cbAno: TComboBox;
    cbNivel: TComboBox;
    cbTurma: TComboBox;
    cbstatus: TComboBox;
    dtMatricula: TDateTimePicker;
    TabSheet1: TTabSheet;
    dbGridCarneAberta: TDBGrid;
    QyCarne: TQuery;
    DsCarne: TDataSource;
    QyCarneMatricula: TIntegerField;
    QyCarneParcela: TIntegerField;
    QyCarneAno: TIntegerField;
    QyCarneDt_venc: TDateTimeField;
    QyCarneDt_pagto: TDateTimeField;
    QyCarneValor: TFloatField;
    QyCarneSituacao: TStringField;
    QyCarneAbertas: TQuery;
    IntegerField1: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    DsCarneAbertas: TDataSource;
    rdgImprimir: TRadioGroup;
    spConsultar: TSpeedButton;
    QyCarneCodForma: TIntegerField;
    QyCarneAbertasCodCurso: TIntegerField;
    QyCarneAbertasSemestre: TIntegerField;
    QyCarneAbertasPeriodo: TIntegerField;
    QyCarneAbertasCodForma: TIntegerField;
    Label7: TLabel;
    QyDisciplinasAluno: TStringField;
    DBText1: TDBText;
    Label8: TLabel;
    Bevel2: TBevel;
    Tb_Config: TTable;
    Tb_ConfigRazao: TStringField;
    Tb_ConfigCNPJ: TStringField;
    Tb_ConfigEndereco: TStringField;
    Tb_ConfigTel: TStringField;
    Tb_ConfigFax: TStringField;
    Tb_ConfigAno: TIntegerField;
    Tb_ConfigDigito: TIntegerField;
    Tb_ConfigMedia: TFloatField;
    QyDisciplinasMD1S: TFloatField;
    QyDisciplinasMD2S: TFloatField;
    upDisciplinas: TUpdateSQL;
    QyDisciplinasUnid1: TStringField;
    QyDisciplinasUnid2: TStringField;
    QyDisciplinasF1: TIntegerField;
    QyDisciplinasF2: TIntegerField;
    QyDisciplinasF3: TIntegerField;
    QyDisciplinasSit: TStringField;
    Panel5: TPanel;
    Label10: TLabel;
    spInserirDisciplinas: TSpeedButton;
    Label12: TLabel;
    cbSerie: TComboBox;
    QyDisciplinasCargaHoraria: TFloatField;
    QyDisciplinasCodSerie: TIntegerField;
    QyDisciplinasSerie: TStringField;
    QyDisciplinasNivel: TStringField;
    QyDisciplinasUnid3: TStringField;
    QyDisciplinasUnid4: TStringField;
    QyCarneCodSerie: TIntegerField;
    spCarne: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    QyDisciplinasPF: TStringField;
    QyDisciplinasRF: TStringField;
    QyDisciplinasMedia: TFloatField;
    QyDisciplinasMedFinal: TFloatField;
    QyDisciplinasMedGlobal: TFloatField;
    spFechar: TSpeedButton;
    ActionList1: TActionList;
    Print: TAction;
    spExcluirDisciplina: TSpeedButton;
    Hab: TAction;
    edParametro: TEdit;
    Mat: TAction;
    Reg: TAction;
    Car: TAction;
    PageControl2: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    QyCarneDias: TIntegerField;
    QyCarneMulta: TFloatField;
    QyCarneTotal: TFloatField;
    procedure cbNivelEnter(Sender: TObject);
    procedure cbTurmaEnter(Sender: TObject);
    procedure spNovoClick(Sender: TObject);
    procedure spSalvarClick(Sender: TObject);
    procedure spAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spExcluirClick(Sender: TObject);
    procedure spConsultarClick(Sender: TObject);
    procedure spRelatorioClick(Sender: TObject);
    procedure cbNivelKeyPress(Sender: TObject; var Key: Char);
    procedure edMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid3KeyPress(Sender: TObject; var Key: Char);
    procedure QyDisciplinasCalcFields(DataSet: TDataSet);
    procedure QyDisciplinasAfterCancel(DataSet: TDataSet);
    procedure QyDisciplinasAfterDelete(DataSet: TDataSet);
    procedure QyDisciplinasAfterPost(DataSet: TDataSet);
    procedure QyDisciplinasNot1Validate(Sender: TField);
    procedure QyDisciplinasNot2Validate(Sender: TField);
    procedure QyDisciplinasNot3Validate(Sender: TField);
    procedure spInserirDisciplinasClick(Sender: TObject);
    procedure cbSerieEnter(Sender: TObject);
    procedure spCarneClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure spFecharClick(Sender: TObject);
    procedure HabExecute(Sender: TObject);
    procedure spExcluirDisciplinaClick(Sender: TObject);
    procedure QyCarneCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure LimparEdits;
    procedure Habilitar;
    procedure Desabilitar;
    procedure Codigos;
    procedure Atualizar;
    procedure AtualizarCarne;
    procedure PontoporVirgula( var key: char);
    procedure Carne;
    function DaysOfMonth(nMonth: Integer): Integer;  public
    { Public declarations }
  end;

var
  frmMatricula: TfrmMatricula;

implementation

uses uDtModule, uGerarCarne, uConsulta, uTipoTurmas, uConsultaMatricula,
  uRelBoletim, uRelBoletim_Colegio, uRelCarne, uRelMatricula, uInformacao,
  uSenhaCaixa;

{$R *.DFM}

procedure TfrmMatricula.PontoporVirgula( var key: char);
begin
  if (Key = '.') then
      Key := ',';
end;

function TfrmMatricula.DaysOfMonth(nMonth: Integer): Integer;
var
  Dia:String;
begin
 // Dia:= DateToStr(Date);
  case nMonth of
    1,4,6,9,11: Result := 30;
    3,5,7,8,10,12: Result := 30;
    2: Result := 28;
  end;
end;

procedure TfrmMatricula.AtualizarCarne;
begin
 try
 with QyCarne do
  begin
    close;
    sql.clear;
    sql.add('select * from Tb_Carne');
    sql.add('where Matricula = ' + edMatricula.Text);
    sql.add('and   CodSerie  = ' + dtModule.CodSerie);
    sql.add('and   Ano       = ' + cbAno.Text);
    sql.add('and   Situacao  = ' + ''''+'PAGO'+'''');
    sql.add('order by Parcela');
    open;
  end;
 with QyCarneAbertas do
  begin
    close;
    sql.clear;
    sql.add('select * from Tb_Carne');
    sql.add('where Matricula = ' + edMatricula.Text);
    sql.add('and   CodSerie  = ' + dtModule.CodSerie);
    sql.add('and   Ano       = ' + cbAno.Text);
    sql.add('and   Situacao  = ' + ''''+'EM ABERTA'+'''');
    sql.add('order by Parcela');
    open;
  end;
 except
 end;
end;

procedure TfrmMatricula.Carne;
 var
  i,parc1,parc2,dia:integer;
  DtVenc:String;
begin
 try
  Codigos;
  frmGerarCarne:=TfrmGerarCarne.Create(Self);
  frmGerarCarne.ShowModal;


 if dtModule.Tag = 1 then
 begin
 try
  if not dtModule.dbAcademico.InTransaction then
    dtModule.dbAcademico.StartTransaction;

  for i := dtModule.Parc1 to dtModule.Parc2 do
   begin
    if dtModule.Mes = 2 then
     dtModule.Dia:= 28
    else
     dtModule.Dia:= dtModule.Dia;
    DtVenc:= Format('%d/%d/%d', [dtModule.Dia , Dtmodule.Mes, Strtoint(Dtmodule.Ano)]);
//    DaysOfMonth(i)
    with dtModule.QySql do
     begin
      close;
      sql.clear;
      sql.add('insert into Tb_Carne');
      sql.add('values'+'('+edMatricula.Text+','+dtModule.CodSerie+','+IntToStr(i)+','+dtModule.Ano
                      +','+'1'+','+''''+DtVenc+''''
                      +','+FloatToStr(dtModule.Valor)+','+''''+'EM ABERTA'+''''+','+''''+DateToStr(Date)+''''+')');
      ExecSQL;
      inc(dtModule.Mes);
      if dtModule.Mes > 12 then
       begin
        dtModule.Mes:= 1;
        dtModule.Ano:= IntToStr(StrToInt(dtModule.Ano)+1);
       end;


     end;
   end;
   dtModule.dbAcademico.Commit;
   Application.MessageBox('Carnê gerado com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
 except
   dtModule.dbAcademico.Rollback;
   Application.MessageBox('Erro ao gerar "Carnê"','Informações',mb_ok+MB_ICONINFORMATION);

 end;
 end;
except
end;
end;

procedure TfrmMatricula.LimparEdits;
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

procedure TfrmMatricula.Habilitar;
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

procedure TfrmMatricula.Desabilitar;
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

procedure TfrmMatricula.Atualizar;
begin
 try
    with QyDisciplinas do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Matricula_Disciplinas');
      sql.add('where Matricula = ' + edMatricula.Text);
      sql.add('and   CodSerie  = ' + dtModule.CodSerie);
      sql.add('and   Ano       = ' + cbAno.Text);
      sql.add('order by Disciplina');
      open;

      if (dtModule.CodSerie = '14') or (dtModule.CodSerie = '15') then
       PageControl2.ActivePageIndex:= 1
      else
       PageControl2.ActivePageIndex:= 0;

     end;
 except
 end;
end;


procedure TfrmMatricula.Codigos;
begin
  try
    with dtModule.QySql do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Turmas');
      sql.add('where Nivel = ' + ''''+cbNivel.Text+'''');
      sql.add('and Serie = ' + ''''+cbSerie.Text+'''');
      open;

      dtModule.Turma:=dtModule.QySql.FieldByName('Turma').AsString;
      dtModule.CodSerie:=dtModule.QySql.FieldByName('CodSerie').AsString;

      close;
      sql.clear;
      sql.add('select * from Tb_Nivel');
      sql.add('where Nome = ' + ''''+cbNivel.Text+'''');
      open;

      dtModule.CodNivel:=dtModule.QySql.FieldByName('CodNivel').AsString;

     end;

  except
   abort;
  end;

end;

procedure TfrmMatricula.cbNivelEnter(Sender: TObject);
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

procedure TfrmMatricula.cbTurmaEnter(Sender: TObject);
 var
  i:Integer;
begin
 try
    cbTurma.Clear;
    with Dtmodule.QySql do
     begin
      close;
      sql.clear;
      sql.add('Select * from Vw_Turmas');
      sql.add('Where Serie = ' + ''''+cbSerie.Text+'''');
      sql.add('and Nivel = ' + ''''+cbNivel.Text+'''');
      sql.add('Order by Turma');
      open;
     end;

    for i:= 0 to Dtmodule.QySql.RecordCount-1 do
     begin
      cbTurma.Items.Add(Dtmodule.QySql.FieldByname('Turma').AsString);
      Dtmodule.QySql.Next;
     end;
      Dtmodule.QySql.close;

 except
 end;

end;

procedure TfrmMatricula.spNovoClick(Sender: TObject);
begin
 try
   Habilitar;
   LimparEdits;

   frmConsulta:=TfrmConsulta.create(self);
   frmConsulta.ShowModal;

   if dtModule.Matricula <> '' then
    begin
     Tag:=1;
     edMatricula.Text:=dtModule.Matricula;
     cbAno.Text:= '2011';
     lblNome.Caption:= dtModule.Nome;
     cbstatus.Text:='NORMAL';
     dtMatricula.DateTime:=Date;
     cbTurma.Text:= 'A';
     edMatricula.SetFocus;
     spSalvar.Enabled:=true;
     QyDisciplinas.close;
    end

   else
   Tag:=0;


 except
 end;
end;

procedure TfrmMatricula.spSalvarClick(Sender: TObject);
 var
  i:integer;
begin
 try
  if edMatricula.Text = '' then
  begin
   Application.MessageBox('Informe a "Matrícula"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if cbAno.Text = '' then
  begin
   Application.MessageBox('Informe o "Ano"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if cbSerie.Text = '' then
  begin
   Application.MessageBox('Informe a "Serie"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if cbNivel.Text = '' then
  begin
   Application.MessageBox('Informe o "Nivel"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if cbTurma.Text = '' then
  begin
   Application.MessageBox('Informe a "Turma"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if Tag = 1 then
  begin
  try
    if not dtModule.dbAcademico.InTransaction then
     dtModule.dbAcademico.StartTransaction;

    Codigos;
    with dtModule.QySql do
     begin
      close;
      sql.clear;
      sql.add('insert into Tb_Matricula');
      sql.add('values'+'('+edMatricula.Text+','+dtModule.CodSerie+','+cbAno.Text+','+''''+cbTurma.Text+''''+','
                          +''''+cbstatus.Text+''''+','+''''+DateToStr(dtMatricula.DateTime)+''''+')');
      ExecSQL;
     end;

    with dtModule.QyGrade do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Grades');
      sql.add('where Serie = ' + ''''+cbSerie.text+'''');
      sql.add('and   Nivel = ' + ''''+cbNivel.text+'''');
      sql.add('and   Ano      = ' + cbAno.Text);
      sql.add('order by Disciplina');
      open;
     end;

    for i:= 1 to dtModule.QyGrade.RecordCount do
     begin
      with dtModule.QySql do
       begin
        close;
        sql.clear;
        sql.add('insert into Tb_Matricula_Disciplinas');
        sql.add('values'+'('+edMatricula.Text+','+dtModule.CodSerie+','+dtModule.QyGradeCodDisciplina.AsString+','
                            +cbAno.Text+','+''''+cbTurma.Text+''''+','+''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''+','+
                            ''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''+','+
                            ''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''+','+
                            ''''+'**'+''''+','+'0'+','+'0'+','+'0'+','+''''+'**'+''''+')');
        ExecSQL;
       end;
      dtModule.QyGrade.Next;
     end;

     dtModule.dbAcademico.Commit;
     Application.MessageBox('Aluno(a) matriculado com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
     Atualizar;

     if Application.MessageBox('Deseja gerar o "Carnê" desse aluno agora?','Informações',mb_yesno+MB_ICONINFORMATION+MB_DEFBUTTON2) = idyes then
      Carne;

     spSalvar.Enabled:=false;
     Desabilitar;

  except
     dtModule.dbAcademico.Rollback;
     Application.MessageBox('Erro ao matricular registro','Informações',mb_ok+MB_ICONERROR);

  end;
  end;

  if Tag = 2 then
   begin
    try
      if not dtModule.dbAcademico.InTransaction then
       dtModule.dbAcademico.StartTransaction;

      Codigos;
      frmTipoTurma:=TfrmTipoTurma.create(self);
      with frmTipoTurma.QyTurma do
       begin
        close;
        sql.clear;
        sql.add('select * from Tb_Turmas');
        sql.add('where CodSerie = ' + dtModule.CodSerie);
        open;
       end;
      frmTipoTurma.showmodal;

      with dtModule.QySql do
       begin
        close;
        sql.clear;
        sql.add('update Tb_Matricula');
        sql.add('set Turma = ' + ''''+cbTurma.Text+'''');
        sql.add(',Situacao = ' + ''''+cbstatus.Text+'''');
        sql.add('where Matricula = ' + ''''+edMatricula.Text+'''');
        sql.add('and CodSerie = ' + dtModule.CodSerie);
        sql.add('and Ano = ' + cbAno.Text);
        ExecSQL;

        close;
        sql.clear;
        sql.add('Update Tb_Matricula_Disciplinas');
        sql.add('set Turma = ' + ''''+cbTurma.Text+'''');
        sql.add('where Matricula = ' + ''''+edMatricula.Text+'''');
        sql.add('and CodSerie = ' + dtModule.CodSerie);
        sql.add('and Ano = ' + cbAno.Text);
        ExecSQL;
       end;

       dtModule.dbAcademico.Commit;
       Application.MessageBox('Operação efetuada com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
       Atualizar;

       spSalvar.Enabled:=false;
       Desabilitar;

    except
       dtModule.dbAcademico.Rollback;
       Application.MessageBox('Erro ao matricular registro','Informações',mb_ok+MB_ICONERROR);

    end;

   end;
 except
 end;
end;

procedure TfrmMatricula.spAlterarClick(Sender: TObject);
begin
   Tag:=2;
   Habilitar;
   spSalvar.Enabled:=true;
end;

procedure TfrmMatricula.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QyDisciplinas.close;
  QyCarne.close;

  Release;
  frmMatricula:=nil;
end;

procedure TfrmMatricula.spExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja "Excluir essa Matrícula"?','Informações',mb_yesno+MB_ICONINFORMATION+MB_DEFBUTTON2) = idyes then
   begin
      Codigos;
      with dtModule.QySql do
       begin
        close;
        sql.clear;
        sql.add('select * from Tb_Carne');
        sql.add('where Matricula = ' + edMatricula.Text);
        sql.add('and   CodSerie  = ' + dtModule.CodSerie);
        sql.add('and   Ano       = ' + cbAno.Text);
        sql.add('and   Situacao  = ' + ''''+'PAGO'+'''');
        open;
       end;

      if dtModule.QySql.RecordCount = 0 then
       begin
       try
        if not dtModule.dbAcademico.InTransaction then
         dtModule.dbAcademico.StartTransaction;

        with dtModule.QySql do
         begin
          close;
          sql.clear;
          sql.add('Delete Tb_Matricula');
          sql.add('where Matricula = ' + edMatricula.Text);
          sql.add('and   CodSerie  = ' + dtModule.CodSerie);
          sql.add('and   Ano       = ' + cbAno.Text);
          ExecSQL;

          close;
          sql.clear;
          sql.add('Delete Tb_Matricula_Disciplinas');
          sql.add('where Matricula = ' + edMatricula.Text);
          sql.add('and   CodSerie  = ' + dtModule.CodSerie);
          sql.add('and   Ano       = ' + cbAno.Text);
          ExecSQL;

          close;
          sql.clear;
          sql.add('Delete Tb_Carne');
          sql.add('where Matricula = ' + edMatricula.Text);
          sql.add('and   CodSerie  = ' + dtModule.CodSerie);
          sql.add('and   Ano       = ' + cbAno.Text);
          ExecSQL;

         end;
         dtModule.dbAcademico.Commit;
         Application.MessageBox('Aluno(a) "Desmatriculado" com sucesso.','Informações',mb_ok+MB_ICONINFORMATION);
         LimparEdits;
         Desabilitar;
         QyDisciplinas.close;
         QyCarne.close;
         QyCarneAbertas.close;
       except
        dtModule.dbAcademico.Rollback;
        Application.MessageBox('Erro ao "Desmatricular" esse registro','Informações',mb_ok+MB_ICONERROR);

       end;
       end
      else
       begin
        Application.MessageBox('Aluno(a) com parcelas pagas, exclusão proibida!!!','Informações',mb_ok+MB_ICONINFORMATION);
        abort;
       end;



   end;

end;

procedure TfrmMatricula.spConsultarClick(Sender: TObject);
begin
 try
  frmConsultaMatricula:=TfrmConsultaMatricula.create(self);
  frmConsultaMatricula.ShowModal;

  if dtModule.Matricula <> '' then
   begin
    edMatricula.Text:= dtModule.Matricula;
    lblNome.Caption := dtModule.Nome;
    cbAno.Text      := dtModule.Ano;
    edMatricula.Text:= dtModule.Matricula;
    cbSerie.Text    := dtModule.Serie;
    cbNivel.Text    := dtModule.Nivel;
    cbstatus.Text   := dtModule.Situacao;
    cbTurma.Text  := dtModule.Turma;
    Codigos;

    Atualizar;
   end;
 except
 end;

end;

procedure TfrmMatricula.spRelatorioClick(Sender: TObject);
begin
  case rdgImprimir.ItemIndex of
   0:begin
    frmRelBoletim:=TfrmRelBoletim.create(self);
    with frmRelBoletim.QyMaster do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_AlunosMatricula');
      sql.add('where Matricula = ' + edMatricula.Text);
      sql.add('and   CodSerie  = ' + dtModule.CodSerie);
      sql.add('and   Ano       = ' + cbAno.Text);
      open;
     end;
    with frmRelBoletim.QyNotas do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Matricula_Disciplinas');
      sql.add('where Matricula = ' + edMatricula.Text);
      sql.add('and   CodSerie  = ' + dtModule.CodSerie);
      sql.add('and   Ano       = ' + cbAno.Text);
      sql.add('order by Disciplina');
      open;
     end;
    frmRelBoletim.QuickRep2.Preview;
   end;
   1:begin
    frmRelBoletim_Colegio:=TfrmRelBoletim_Colegio.create(self);
    with frmRelBoletim_Colegio.QyMaster do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_AlunosMatricula');
      sql.add('where Matricula = ' + edMatricula.Text);
      sql.add('and   CodSerie  = ' + dtModule.CodSerie);
      sql.add('and   Ano       = ' + cbAno.Text);
      open;
     end;
    with frmRelBoletim_Colegio.QyNotas do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Notas_Colegio');
      sql.add('where Matricula = ' + edMatricula.Text);
      sql.add('and   CodSerie  = ' + dtModule.CodSerie);
      sql.add('and   Ano       = ' + cbAno.Text);
      sql.add('order by Disciplina');
      open;
     end;
    frmRelBoletim_Colegio.QuickRep2.Preview;
   end;
   2:begin
    frmRelCarne:=TfrmRelCarne.create(self);
    with frmRelCarne.QyCarne do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Carne');
      sql.add('where Matricula = ' + edMatricula.Text);
      sql.add('and   CodSerie  = ' + dtModule.CodSerie);
//      sql.add('and   Ano  = ' + cbAno.Text);
      sql.add('order by Parcela');
      open;
     end;
    frmRelCarne.QuickRep2.Preview;
   end;
   3:begin
    frmRelMatricula:=TfrmRelMatricula.create(self);
    with frmRelMatricula.QyMaster do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_AlunosMatricula');
      sql.add('where Matricula = ' + edMatricula.Text);
      sql.add('and   CodSerie  = ' + dtModule.CodSerie);
      sql.add('and   Ano       = ' + cbAno.Text);
      open;
     end;
    with frmRelMatricula.QyDetalhe do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Matricula_Disciplinas');
      sql.add('where Matricula = ' + edMatricula.Text);
      sql.add('and   CodSerie  = ' + dtModule.CodSerie);
      sql.add('and   Ano       = ' + cbAno.Text);
      sql.add('order by Disciplina');
      open;
     end;
    frmRelMatricula.QuickRep1.Preview;
   end;
  end;
end;

procedure TfrmMatricula.cbNivelKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmMatricula.edMatriculaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmMatricula.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
try
if (Column.Field.AsString <> QyDisciplinasAluno.AsString) and
   (Column.Field.AsString <> QyDisciplinasF1.AsString) and
   (Column.Field.AsString <> QyDisciplinasF2.AsString) and
   (Column.Field.AsString <> QyDisciplinasMatricula.AsString) and
   (Column.Field.AsString <> QyDisciplinasCodSerie.AsString)and
   (Column.Field.AsString <> QyDisciplinasCodDisciplina.AsString) and
   (column.Field.AsString <> QyDisciplinasAno.AsString) and
   (column.Field.AsString <> QyDisciplinasSerie.AsString) and
   (column.Field.AsString <> QyDisciplinasTurma.AsString)  and
   (column.Field.AsString <> QyDisciplinasNivel.AsString)  and
   (column.Field.AsString <> QyDisciplinasDisciplina.AsString) then
begin
 Tb_Config.open;
 if not ((Column.Field.AsString = '**') or (Trim(Column.Field.AsString) = '')) then
   if (StrToFloat(Column.Field.AsString) >= Tb_ConfigMedia.value) then
     begin
      DBGrid1.Canvas.Font.Color := clBlue;

      DBGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top,FormatFloat('#0.0',strtofloat(Column.Field.AsString)));
     end
   else if (StrToFloat(Column.Field.AsString) < Tb_ConfigMedia.value) then
     begin
      DBGrid1.Canvas.Font.Color := clRed;

      DBGrid1.Canvas.TextRect (
          Rect, Rect.Left, Rect.Top,
          FormatFloat('#0.0',strtofloat(Column.Field.AsString)));
     end;
end;
except
//
end;

end;

procedure TfrmMatricula.DBGrid3KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
  begin
    key:= #0;
    if (Sender is TDBGrid) then
     TDBGrid(Sender).Perform(WM_keydown,VK_Tab,0)
    else
     Perform(WM_NEXTDLGCTL,0,0)
  end;

if not (key in ['0'..'9','*',',',#8]) then
 Key := #0;

 PontoporVirgula(key);
end;


procedure TfrmMatricula.QyDisciplinasCalcFields(DataSet: TDataSet);
var
 Valor:string;
 MD1S,MD2S,Media,Valo,V_I,V_II:Real;
begin
Valor:= '';
//****** Média  1ª unidade *****************
try
  //******************************************************************//
  if ((QyDisciplinasUnid1.Value <> '**') and (QyDisciplinasUnid2.Value = '**') and (QyDisciplinasUnid3.Value = '**') and (QyDisciplinasUnid4.Value = '**') and (QyDisciplinasRF.Value = '**') and (QyDisciplinasPF.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDisciplinasUnid1.Value)/2;
      QyDisciplinasMD1S.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDisciplinasUnid1.Value = '**') and (QyDisciplinasUnid2.Value <> '**') and (QyDisciplinasUnid3.Value = '**') and (QyDisciplinasUnid4.Value = '**') and (QyDisciplinasRF.Value = '**') and (QyDisciplinasPF.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDisciplinasUnid2.Value)/2;
      QyDisciplinasMD1S.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDisciplinasUnid1.Value = '**') and (QyDisciplinasUnid2.Value = '**') and (QyDisciplinasUnid3.Value <> '**') and (QyDisciplinasUnid4.Value = '**') and (QyDisciplinasRF.Value = '**') and (QyDisciplinasPF.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDisciplinasUnid3.Value)/2;
      QyDisciplinasMD1S.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDisciplinasUnid1.Value = '**') and (QyDisciplinasUnid2.Value = '**') and (QyDisciplinasUnid3.Value = '**') and (QyDisciplinasUnid4.Value <> '**') and (QyDisciplinasRF.Value = '**') and (QyDisciplinasPF.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDisciplinasUnid4.Value)/2;
      QyDisciplinasMD1S.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDisciplinasUnid1.Value = '**') and (QyDisciplinasUnid2.Value = '**') and (QyDisciplinasUnid3.Value = '**') and (QyDisciplinasUnid4.Value = '**') and (QyDisciplinasRF.Value = '**') and (QyDisciplinasPF.Value = '**')) then
    QyDisciplinasMD1S.AsString:= VALOR

  else
   begin
    MD1S:= (StrToFloat(QyDisciplinasUnid1.Value) + StrToFloat(QyDisciplinasUnid2.Value) + StrToFloat(QyDisciplinasUnid3.Value) + StrToFloat(QyDisciplinasUnid4.Value))/4;
    QyDisciplinasMD1S.Value:= StrToFloat(FormatFloat('#0.0',StrtoFloat(copy(FloatToStr(MD1S),1,3))));
   end;

   if not ((QyDisciplinasPF.value = '**') or (Trim(QyDisciplinasPF.value) = '')) then
   begin
    if StrToFloat(QyDisciplinasPF.value) > QyDisciplinasMD1S.Value then
     begin
       QyDisciplinasMD1S.Value := (StrToFloat(QyDisciplinasPF.value) + QyDisciplinasMD1S.Value)/2;
       MD1S:= QyDisciplinasMD1S.Value;
     end;
    if not ((QyDisciplinasRF.value = '**') or (Trim(QyDisciplinasRF.value) = '')) then
     begin
       QyDisciplinasMD1S.Value := (StrToFloat(QyDisciplinasRF.value) + QyDisciplinasMD1S.Value)/2;
       MD1S:= QyDisciplinasMD1S.Value;
     end;
   end;



except

end;

end;

procedure TfrmMatricula.QyDisciplinasAfterCancel(DataSet: TDataSet);
begin
  try
    QyDisciplinas.CancelUpdates;
  except
   abort;

  end;

end;

procedure TfrmMatricula.QyDisciplinasAfterDelete(DataSet: TDataSet);
begin
  try
    QyDisciplinas.ApplyUpdates;
    QyDisciplinas.CommitUpdates;
  except
   abort;

  end;

end;

procedure TfrmMatricula.QyDisciplinasAfterPost(DataSet: TDataSet);
begin
  try
    QyDisciplinas.ApplyUpdates;
    QyDisciplinas.CommitUpdates;
  except
   abort;

  end;

end;

procedure TfrmMatricula.QyDisciplinasNot1Validate(Sender: TField);
begin
try
   if (strtofloat(QyDisciplinasUnid1.AsString) > 10) or (strtofloat(QyDisciplinasUnid1.AsString) < 0) then
    begin
     Application.MessageBox('Nota Inválida','Atenção',MB_OK+MB_ICONERROR);
     SysUtils.Abort;
    end;
except
abort;
end;
end;

procedure TfrmMatricula.QyDisciplinasNot2Validate(Sender: TField);
begin
try
   if (strtofloat(QyDisciplinasUnid2.AsString) > 10) or (strtofloat(QyDisciplinasUnid2.AsString) < 0) then
    begin
     Application.MessageBox('Nota Inválida','Atenção',MB_OK+MB_ICONERROR);
     SysUtils.Abort;
    end;
except
abort;
end;

end;

procedure TfrmMatricula.QyDisciplinasNot3Validate(Sender: TField);
begin
try
   if (strtofloat(QyDisciplinasUnid3.AsString) > 10) or (strtofloat(QyDisciplinasUnid3.AsString) < 0) then
    begin
     Application.MessageBox('Nota Inválida','Atenção',MB_OK+MB_ICONERROR);
     SysUtils.Abort;
    end;
except
abort;
end;

end;

procedure TfrmMatricula.spInserirDisciplinasClick(Sender: TObject);
var
  unid1,unid2,unid3,unid4,unid5,unid6 : string;
begin
  try
  if edMatricula.Text = '' then
  begin
   Application.MessageBox('Informe a "Matrícula"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if cbAno.Text = '' then
  begin
   Application.MessageBox('Informe o "Ano"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if cbSerie.Text = '' then
  begin
   Application.MessageBox('Informe a "Serie"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if cbNivel.Text = '' then
  begin
   Application.MessageBox('Informe o "Nivel"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

  if cbTurma.Text = '' then
  begin
   Application.MessageBox('Informe a "Turma"!','Atenção',MB_OK+MB_ICONINFORMATION);
   SysUtils.Abort;
  end;

    frmGrades:=TfrmGrades.create(self);
    with frmGrades.QySerie do
     begin
      close;
      sql.clear;
      sql.add('select * From Vw_NivelSerie');
      sql.add('order by Serie');
      open;
     end;
    frmGrades.Showmodal;

    if dtModule.CodSerie <> '0' then
     begin
      edParametro.Text:= dtModule.Disciplina+ ' ' + dtModule.Serie + ' ' + dtModule.Nivel;
      try
       if not dtModule.dbAcademico.InTransaction then
         dtModule.dbAcademico.StartTransaction;

       with dtModule.QySql do
       begin
        close;
        sql.clear;
        sql.add('insert into Tb_Matricula_Disciplinas');
        sql.add('values'+'('+edMatricula.Text+','+dtModule.CodSerie+','+dtModule.CodDisciplina+','
                            +cbAno.Text+','+''''+cbTurma.Text+''''+','
                            +''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''
                            +','+''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''
                            +','+''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''
                            +','+''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''+','+''''+'**'+''''+
                            ','+'0'+','+'0'+','+'0'+','+''''+'**'+''''+')');
        ExecSQL;
       end;
       dtModule.dbAcademico.Commit;
       Atualizar;
       Application.MessageBox('Disciplina cadastrada com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
       except
       dtModule.dbAcademico.Rollback;
       Application.MessageBox('Erro ao cadastrar essa disciplina','Informações',mb_ok+MB_ICONERROR);
       end;
     end;
  except

  end;

end;

procedure TfrmMatricula.cbSerieEnter(Sender: TObject);
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

procedure TfrmMatricula.spCarneClick(Sender: TObject);
begin
  carne;
end;

procedure TfrmMatricula.SpeedButton1Click(Sender: TObject);
begin
  try
    with QyCarne do
     begin
      close;
      sql.clear;
      sql.add('select * from Tb_Carne');
      sql.add('where Matricula = ' + edMatricula.Text);
      sql.add('and CodSerie = ' + dtModule.CodSerie);
      open;
     end;
  except

  end;

end;

procedure TfrmMatricula.SpeedButton2Click(Sender: TObject);
 var
  senha:string;
begin
  try
     frmSenhaCaixa:=TfrmSenhaCaixa.create(self);
     frmSenhaCaixa.ShowModal;

     begin
      if dtModule.Senha = '20030156sli' then
       begin
        try
          if not dtModule.dbAcademico.InTransaction then
           dtModule.dbAcademico.StartTransaction;

          with QyCarne do
           begin
            close;
            sql.clear;
            sql.add('Delete Tb_Carne');
            sql.add('where Matricula = ' + edMatricula.Text);
            sql.add('and CodSerie = ' + dtModule.CodSerie);
            ExecSQL;
           end;
           dtModule.dbAcademico.Commit;
           Application.MessageBox('Carnê excluido com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
        except
           dtModule.dbAcademico.Rollback;
           Application.MessageBox('Erro ao excluir "Carnê"','Informações',mb_ok+MB_ICONINFORMATION);
        end;

       end;
     end;
  except
   abort;
  end;

end;

procedure TfrmMatricula.spFecharClick(Sender: TObject);
begin
 close;
end;

procedure TfrmMatricula.HabExecute(Sender: TObject);
begin
  spAlterar.Enabled:= true;
end;

procedure TfrmMatricula.spExcluirDisciplinaClick(Sender: TObject);
begin
  try
   if QyDisciplinasCodDisciplina.AsString <> '0' then
     begin
      try
       if not dtModule.dbAcademico.InTransaction then
         dtModule.dbAcademico.StartTransaction;

       with dtModule.QySql do
       begin
        close;
        sql.clear;
        sql.add('delete from Tb_Matricula_Disciplinas');
        sql.add('where Matricula = ' + QyDisciplinasMatricula.AsString);
        sql.add('and CodSerie = ' + QyDisciplinasCodSerie.AsString);
        sql.add('and Ano = ' + QyDisciplinasAno.AsString);
        sql.add('and CodDisciplina = ' + QyDisciplinasCodDisciplina.AsString);
        ExecSQL;
       end;
       dtModule.dbAcademico.Commit;
       Atualizar;
       Application.MessageBox('Disciplina EXCLUIDA com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
       except
       dtModule.dbAcademico.Rollback;
       Application.MessageBox('Erro ao EXCLUIR essa disciplina','Informações',mb_ok+MB_ICONERROR);
       end;
     end;
  except
   abort;
  end;


end;

procedure TfrmMatricula.QyCarneCalcFields(DataSet: TDataSet);
 var
  DiasAtraso:String;
  Valor,VlMulta:Real;

  dia:Real;
  MulTotal:Real;
  MulDiaria,MulMensal:Real;

begin
  try
   if (QyCarneParcela.AsInteger = 1) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;

   if (QyCarneParcela.AsInteger = 2) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;

   if (QyCarneParcela.AsInteger = 3) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;

   if (QyCarneParcela.AsInteger = 4) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;

   if (QyCarneParcela.AsInteger = 5) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;

   if (QyCarneParcela.AsInteger = 6) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;

   if (QyCarneParcela.AsInteger = 7) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;

   if (QyCarneParcela.AsInteger = 8) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;

   if (QyCarneParcela.AsInteger = 9) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;

   if (QyCarneParcela.AsInteger = 10) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;

   if (QyCarneParcela.AsInteger = 11) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;
   if (QyCarneParcela.AsInteger = 12) and (QyCarneDt_venc.AsDateTime < Date) then
    begin
     if (QyCarneSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyCarneDt_venc.AsDateTime);
        QyCarneDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyCarneValor.AsFloat * 5)/100;
        QyCarneMulta.AsFloat:= MulDiaria + MulMensal;
        QyCarneTotal.AsFloat:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyCarneValor.AsFloat;
      end;
    end;
  except

  end;


end;

end.
