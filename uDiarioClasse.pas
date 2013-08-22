unit uDiarioClasse;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ActnList;

type
  TfrmDiarioClasse = class(TForm)
    pnName: TPanel;
    Panel3: TPanel;
    Panel1: TPanel;
    Label21: TLabel;
    cbSerie: TComboBox;
    Label22: TLabel;
    cbNivel: TComboBox;
    Label23: TLabel;
    cbTurma: TComboBox;
    Label6: TLabel;
    cbAno: TComboBox;
    Label9: TLabel;
    cbstatus: TComboBox;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    cbMes: TComboBox;
    Label2: TLabel;
    cbDisciplinas: TComboBox;
    rdTipoDiario: TRadioGroup;
    SpeedButton2: TSpeedButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Panel2: TPanel;
    spSimulado: TSpeedButton;
    edMatricula: TEdit;
    Label3: TLabel;
    chIndividual: TCheckBox;
    spMatriculados: TSpeedButton;
    spEtiqueta: TSpeedButton;
    procedure cbSerieEnter(Sender: TObject);
    procedure cbTurmaEnter(Sender: TObject);
    procedure cbSerieKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbNivelEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbDisciplinasEnter(Sender: TObject);
    procedure spMatriculadosClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure spSimuladoClick(Sender: TObject);
    procedure spEtiquetaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function NomeMes(nMonth: Integer): String;
  end;

var
  frmDiarioClasse: TfrmDiarioClasse;

implementation

uses uDtModule, ureldiarioclasse, uRelDiarioNotasPreenchimento,
  uRelDiarioNotas, uRelMatriculados, uRelAlunosMatriculados,
  uRelAniversariantes, uRelDiarioNotasPreenchimento_Colegio,
  uRelDiarioNotas_Colegio, uRelDiarioNotasColegio, uRelSimulado,
  uRelSimuladoModeloNovo, uRelEtiquetas;

{$R *.DFM}

function TfrmDiarioClasse.NomeMes(nMonth: Integer): String;
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

procedure TfrmDiarioClasse.cbSerieEnter(Sender: TObject);
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

procedure TfrmDiarioClasse.cbTurmaEnter(Sender: TObject);
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

procedure TfrmDiarioClasse.cbSerieKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmDiarioClasse.SpeedButton1Click(Sender: TObject);
begin
  try
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

    if cbstatus.Text = '' then
    begin
     Application.MessageBox('Informe o "Status"!','Atenção',MB_OK+MB_ICONINFORMATION);
     SysUtils.Abort;
    end;

    if cbMes.Text = '' then
    begin
     Application.MessageBox('Informe o "Mês do Diário"!','Atenção',MB_OK+MB_ICONINFORMATION);
     SysUtils.Abort;
    end;


      frmRelDiarioClasse:=TfrmRelDiarioClasse.create(self);
      with frmRelDiarioClasse.QyMaster do
       begin
        close;
        sql.clear;
        sql.add('SELECT Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSerie, COUNT(*) AS total');
        sql.add('FROM Vw_DiarioClasse');
        sql.add('where Serie = ' + ''''+cbSerie.Text+'''');
        sql.add('and   Nivel = ' + ''''+cbNivel.Text+'''');

        if rdTipoDiario.ItemIndex = 0 then
         sql.add('and   Disciplina = ' + ''''+cbDisciplinas.Text+'''');


        sql.add('and   Turma = ' + ''''+cbTurma.Text+'''');
        sql.add('and   Ano   = ' + cbAno.Text);
        sql.add('GROUP BY Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSerie');
        sql.add('order by Turma');
        open;
       end;

      with frmRelDiarioClasse.QyDetalhe do
       begin
        close;
        sql.clear;
        sql.add('select * from Vw_Notas');
        sql.add('where CodSerie = :CodSerie');
        sql.add('and   CodDisciplina = :CodDisciplina');

        if rdTipoDiario.ItemIndex = 0 then
         sql.add('and   Disciplina = ' + ''''+cbDisciplinas.Text+'''');

        sql.add('and   Turma = :Turma');
        sql.add('and   Situacao   = ' + ''''+cbstatus.Text+'''');
        sql.add('and   Ano   = ' + cbAno.Text);
        sql.add('order by Aluno');
        open;
       end;
      frmRelDiarioClasse.qrMes.Caption:= cbMes.Text;
      frmRelDiarioClasse.QuickRep1.Preview;
      frmRelDiarioClasse.QuickRep2.Preview;
  except
   abort;
  end;

end;

procedure TfrmDiarioClasse.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Release;
   frmDiarioClasse:=nil;
end;

procedure TfrmDiarioClasse.cbNivelEnter(Sender: TObject);
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

procedure TfrmDiarioClasse.FormShow(Sender: TObject);
begin
  cbAno.Text:= '2011';
  cbstatus.Text:= 'NORMAL';
end;

procedure TfrmDiarioClasse.cbDisciplinasEnter(Sender: TObject);
 var
  i:Integer;
begin
    cbDisciplinas.Clear;
    with Dtmodule.QySql do
     begin
      close;
      sql.clear;
      sql.add('Select * from Tb_Disciplinas');
      sql.add('Order by Nome');
      open;
     end;

    for i:= 0 to Dtmodule.QySql.RecordCount-1 do
     begin
      cbDisciplinas.Items.Add(Dtmodule.QySql.FieldByname('Nome').AsString);
      Dtmodule.QySql.Next;
     end;
       Dtmodule.QySql.close;

end;

procedure TfrmDiarioClasse.spMatriculadosClick(Sender: TObject);
begin
try
     frmRelAlunosMatriculados:=TfrmRelAlunosMatriculados.create(self);
      with frmRelAlunosMatriculados.QyMaster do
       begin
        close;
        sql.clear;
        sql.add('SELECT * FROM Vw_AlunosMatricula');
        sql.add('where Serie = ' + ''''+cbSerie.Text+'''');
        sql.add('and   Nivel = ' + ''''+cbNivel.Text+'''');
        sql.add('and   Turma = ' + ''''+cbTurma.Text+'''');
        sql.add('and   Situacao = ' + ''''+'NORMAL'+'''');
        sql.add('and   Ano   = ' + cbAno.Text);
        sql.add('order by Nome');
        open;
       end;
      frmRelAlunosMatriculados.QuickRep1.Preview;

except

end;

end;

procedure TfrmDiarioClasse.SpeedButton2Click(Sender: TObject);
var
 Mes:String;
begin
 try
     Mes:= copy(DateToStr(Date),4,2);
     FrmRelAniversariantes:=TFrmRelAniversariantes.create(self);
     with FrmRelAniversariantes.QyAlunos do
      begin
       close;
       sql.Clear;
       sql.add('select distinct * from Vw_Alunos');
       sql.add('where datepart(month,Dt_Nasc) = ' + ''''+Mes+'''');
//       sql.add('and Nivel = ' + ''''+cbNivel.Text+'''');
//       sql.add('and Serie = ' + ''''+cbSerie.Text+'''');
       sql.add('and Ano = ' + ''''+cbAno.Text+'''');
       sql.add('and Turma = ' + ''''+cbTurma.Text+'''');


       sql.add('and Situacao      = ' + ''''+'NORMAL'+'''');
       sql.add('order by Nome');
       open;
      end;
      FrmRelAniversariantes.qrMes.Caption:= 'ANIVERSARIANTES DO MÊS DE:' + ' ' + '"'+NomeMes(StrToInt(copy(DateToStr(Date),4,2)))+'"';
      FrmRelAniversariantes.QuickRep1.Preview;

 except

 end;

end;

procedure TfrmDiarioClasse.spSimuladoClick(Sender: TObject);
begin
  try
    frmRelSimuladoModeloNovo:=TfrmRelSimuladoModeloNovo.create(self);
    with frmRelSimuladoModeloNovo.QyCandidatos do
     begin
      close;
      sql.clear;
      sql.add('SELECT * FROM Vw_Matricula_Disciplinas');
      sql.add('where Serie = ' + ''''+cbSerie.Text+'''');
      sql.add('and   Nivel = ' + ''''+cbNivel.Text+'''');
      sql.add('and   Turma = ' + ''''+cbTurma.Text+'''');
      sql.add('and   Ano   = ' + cbAno.Text);
      sql.add('and   Disciplina   = ' + ''''+cbDisciplinas.Text+'''');
      if (chIndividual.Checked = true) then
      sql.add('and   Matricula   = ' + edMatricula.Text);

      sql.add('order by Aluno');
      open;
     end;
    frmRelSimuladoModeloNovo.QuickRep1.Preview;

  except

  end;

end;

procedure TfrmDiarioClasse.spEtiquetaClick(Sender: TObject);
begin
  try
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

    if cbstatus.Text = '' then
    begin
     Application.MessageBox('Informe o "Status"!','Atenção',MB_OK+MB_ICONINFORMATION);
     SysUtils.Abort;
    end;

    if dtModule.Tag = 4 then
    begin
      frmRelEtiquetas:=TfrmRelEtiquetas.create(self);
      with frmRelEtiquetas.QyAlunos do
       begin
        close;
        sql.clear;
        sql.add('select * from Vw_AlunosMatricula');
        sql.add('where Serie = ' + ''''+cbSerie.Text+'''');
        sql.add('and   Nivel = ' + ''''+cbNivel.Text+'''');
        sql.add('and   Turma = ' + ''''+cbTurma.Text+'''');
        sql.add('and   Ano   = ' + cbAno.Text);
        sql.add('order by Nome');
        open;
       end;
      frmRelEtiquetas.QuickRep1.Preview;
    end;
  except
  end;
end;

end.
