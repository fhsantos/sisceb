unit uGrade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Grids, DBGrids, Buttons, Db, DBTables;

type
  TfrmGrade = class(TForm)
    Panel1: TPanel;
    cbSerie: TComboBox;
    Label21: TLabel;
    Panel4: TPanel;
    Panel3: TPanel;
    Label22: TLabel;
    cbNivel: TComboBox;
    Label6: TLabel;
    cbAno: TComboBox;
    Panel2: TPanel;
    spNovo: TSpeedButton;
    spExcluir: TSpeedButton;
    spSalvar: TSpeedButton;
    spAlterar: TSpeedButton;
    spCancelar: TSpeedButton;
    DBGrid1: TDBGrid;
    dsGrade: TDataSource;
    QyGrade: TQuery;
    QyGradeDisciplina: TStringField;
    QyGradeCodDisciplina: TIntegerField;
    QyGradeAno: TIntegerField;
    QyGradeSituacao: TStringField;
    Label1: TLabel;
    edCodDisciplina: TEdit;
    Label2: TLabel;
    edDisciplina: TEdit;
    Label3: TLabel;
    rdgImprimir: TRadioGroup;
    spFechar: TSpeedButton;
    spConsultar: TSpeedButton;
    QyGradeCargaHoraria: TFloatField;
    QyGradeCodNivel: TIntegerField;
    QyGradeSerie: TStringField;
    QyGradeNivel: TStringField;
    QyGradeCodSerie: TIntegerField;
    procedure cbSerieEnter(Sender: TObject);
    procedure spNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure spSalvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure spAlterarClick(Sender: TObject);
    procedure spExcluirClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure spFecharClick(Sender: TObject);
    procedure spConsultarClick(Sender: TObject);
    procedure spCancelarClick(Sender: TObject);
    procedure cbSerieKeyPress(Sender: TObject; var Key: Char);
    procedure cbNivelEnter(Sender: TObject);
  private
    { Private declarations }
    procedure LimparEdits;
    procedure Habilitar;
    procedure Desabilitar;
    procedure Codigos;
    procedure Disciplinas;
  public
    { Public declarations }
  end;

var
  frmGrade: TfrmGrade;

implementation

uses uConsultaDisciplinas, uDtModule;

{$R *.DFM}

procedure TfrmGrade.Disciplinas;
begin
   try
    frmConsultaDisciplinas:=TfrmConsultaDisciplinas.create(self);
    frmConsultaDisciplinas.QyDisciplinas.open;
    frmConsultaDisciplinas.ShowModal;

    if (dtModule.CodDisciplina <> '') then
     begin
      edCodDisciplina.Text:= dtModule.CodDisciplina;
      edDisciplina.Text   := dtModule.Disciplina;
     end;
   except
    abort;
   end;
end;


procedure TfrmGrade.LimparEdits;
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

procedure TfrmGrade.Habilitar;
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

procedure TfrmGrade.Desabilitar;
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

procedure TfrmGrade.Codigos;
begin
  try
    with dtModule.QySql do
     begin
      close;
      sql.clear;
      sql.add('select * from Tb_Series');
      sql.add('where Nome = ' + ''''+cbSerie.Text+'''');
      open;

      dtModule.CodSerie:=dtModule.QySql.FieldByName('CodSerie').AsString;

      close;
      sql.clear;
      sql.add('select * from Tb_Nivel');
      sql.add('where Nome = ' + ''''+cbNivel.Text+'''');
      open;

      dtModule.CodNivel:=dtModule.QySql.FieldByName('CodNivel').AsString;
      close;
     end;
  except

  end;

end;

procedure TfrmGrade.cbSerieEnter(Sender: TObject);
 var
  i:Integer;
begin
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


end;

procedure TfrmGrade.spNovoClick(Sender: TObject);
begin
   Habilitar;
   LimparEdits;
   Tag:=1;

   try
    frmConsultaDisciplinas:=TfrmConsultaDisciplinas.create(self);
    frmConsultaDisciplinas.QyDisciplinas.open;
    frmConsultaDisciplinas.ShowModal;

    if (dtModule.CodDisciplina <> '') then
     begin
      edCodDisciplina.Text:= dtModule.CodDisciplina;
      edDisciplina.Text   := dtModule.Disciplina;
      spnovo.Enabled:= false;
      spsalvar.Enabled:= true;
      spcancelar.Enabled:= true;
      spexcluir.Enabled:= false;
      spAlterar.Enabled:= false;
     end;
   except
    abort;
   end;

end;

procedure TfrmGrade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   QyGrade.close;
   Release;
   frmGrade:=nil;
end;

procedure TfrmGrade.spSalvarClick(Sender: TObject);
 var
  ok:string;
begin
   if cbSerie.Text = '' then
    begin
     Application.MessageBox('Informe a "SERIE"!','Atenção',MB_OK+MB_ICONINFORMATION);
     SysUtils.Abort;
    end;

   if cbNivel.Text = '' then
    begin
     Application.MessageBox('Informe o "NIVEL DE ENSINO"!','Atenção',MB_OK+MB_ICONINFORMATION);
     SysUtils.Abort;
    end;

   if cbAno.Text = '' then
    begin
     Application.MessageBox('Informe o "Ano"!','Atenção',MB_OK+MB_ICONINFORMATION);
     SysUtils.Abort;
    end;

   if rdgImprimir.ItemIndex = 0 then
    ok:='S'
   else
    Ok:='N';

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
       sql.add('insert into Tb_Grades');
       sql.add('values'+'('+dtModule.CodSerie+','+edCodDisciplina.Text+','+dtModule.CodNivel+','+cbAno.Text+','+''''+Ok+''''+')');
       ExecSQL;
      end;

      dtModule.dbAcademico.Commit;
      Application.MessageBox('Registro gravado com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
      if Application.MessageBox('Dejesa cadastrar outra disciplina?','Informações',mb_yesno+MB_ICONEXCLAMATION+MB_DEFBUTTON2) = idyes then
        Disciplinas
      else
       begin
        Desabilitar;
        spnovo.Enabled:= true;
        spsalvar.Enabled:= false;
        spcancelar.Enabled:= false;
        spexcluir.Enabled:= true;
        spAlterar.Enabled:= false;
       end;

    except
      dtModule.dbAcademico.Rollback;
      Application.MessageBox('Erro no registro','Informações',mb_ok+MB_ICONERROR);
    end;
   end;

   if Tag = 2 then
   begin
    try
     if not dtModule.dbAcademico.InTransaction then
       dtModule.dbAcademico.StartTransaction;

     Codigos;
     with dtModule.QySql do
      begin
       close;
       sql.clear;
       sql.add('update Tb_Grades');
       sql.add('set situacao = ' + ''''+Ok+'''');
       sql.add('where CodSerie = ' + dtModule.CodSerie);
       sql.add('and CodDisciplina = ' + dtModule.CodDisciplina);
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
end;

procedure TfrmGrade.FormCreate(Sender: TObject);
begin
   Desabilitar;
end;

procedure TfrmGrade.spAlterarClick(Sender: TObject);
begin
   Habilitar;
   spnovo.Enabled:= false;
   spsalvar.Enabled:= true;
   spcancelar.Enabled:= true;
   spexcluir.Enabled:= false;
   spAlterar.Enabled:= false;
   Tag:=2;
end;

procedure TfrmGrade.spExcluirClick(Sender: TObject);
begin
  if Application.MessageBox('Dejesa excluir essa "Disciplina"?','Informações',mb_yesno+MB_ICONEXCLAMATION+MB_DEFBUTTON2) = idyes then
   begin
    try
     if not dtModule.dbAcademico.InTransaction then
       dtModule.dbAcademico.StartTransaction;

     Codigos;
     with dtModule.QySql do
      begin
       close;
       sql.clear;
       sql.add('delete Tb_Grades');
       sql.add('where CodSerie = ' + dtModule.CodSerie);
       sql.add('and CodDisciplina = ' + dtModule.CodDisciplina);
       ExecSQL;
      end;

      dtModule.dbAcademico.Commit;
      Application.MessageBox('Registro excluido com sucesso','Informações',mb_ok+MB_ICONINFORMATION);
      spConsultar.click;
      spnovo.Enabled:= true;
      spsalvar.Enabled:= false;
      spcancelar.Enabled:= false;
      spexcluir.Enabled:= false;
      spAlterar.Enabled:= false;

    except
      dtModule.dbAcademico.Rollback;
      Application.MessageBox('Erro no registro','Informações',mb_ok+MB_ICONERROR);
    end;
   end;
end;

procedure TfrmGrade.DBGrid1CellClick(Column: TColumn);
begin
 try
  dtModule.CodSerie:= QyGradeCodSerie.AsString;
  dtModule.CodDisciplina:= QyGradeCodDisciplina.AsString;

  cbSerie.Text:= QyGradeSerie.AsString;
  cbNivel.Text:= QyGradeNivel.AsString;
  cbAno.Text:= QyGradeAno.AsString;
  edDisciplina.Text:= QyGradeDisciplina.AsString;
  edCodDisciplina.Text:= QyGradeCodDisciplina.AsString;

  spnovo.Enabled:= true;
  spsalvar.Enabled:= false;
  spcancelar.Enabled:= false;
  spexcluir.Enabled:= true;
  spAlterar.Enabled:= false;


  if QyGradeSituacao.AsString = 'S' then
   rdgImprimir.ItemIndex:=0
  else if QyGradeSituacao.AsString = 'N' then
   rdgImprimir.ItemIndex:=1;


 except
  abort;
 end;
end;

procedure TfrmGrade.spFecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmGrade.spConsultarClick(Sender: TObject);
begin
  try
   Habilitar;
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

   if cbAno.Text = '' then
    begin
     Application.MessageBox('Informe o "Ano"!','Atenção',MB_OK+MB_ICONINFORMATION);
     SysUtils.Abort;
    end;

   with QyGrade do
    begin
     close;
     sql.clear;
     sql.add('select * from Vw_Grades');
     sql.add('where Serie = ' + ''''+cbSerie.Text+'''');
     sql.add('and Nivel = ' + ''''+cbNivel.Text+'''');
     sql.add('and Ano = ' + cbAno.Text);
     open;
    end;

   if QyGrade.RecordCount > 0 then
    begin
     spnovo.Enabled:= true;
     spsalvar.Enabled:= false;
     spcancelar.Enabled:= false;
     spexcluir.Enabled:= true;
     spAlterar.Enabled:= true;
    end;

  except
   abort;
  end;

end;

procedure TfrmGrade.spCancelarClick(Sender: TObject);
begin
  spnovo.Enabled:= true;
  spsalvar.Enabled:= false;
  spcancelar.Enabled:= false;
  spexcluir.Enabled:= true;
  spAlterar.Enabled:= true;
end;

procedure TfrmGrade.cbSerieKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmGrade.cbNivelEnter(Sender: TObject);
 var
  i:Integer;
begin
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



end;

end.
