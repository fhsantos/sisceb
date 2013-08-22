unit uDiarioNotas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ActnList;

type
  TfrmDiarioNotas = class(TForm)
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
    Label1: TLabel;
    cbMes: TComboBox;
    Label2: TLabel;
    cbDisciplinas: TComboBox;
    rdTipoDiario: TRadioGroup;
    spEnsRegular: TSpeedButton;
    spDiarioNotas: TSpeedButton;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure cbSerieEnter(Sender: TObject);
    procedure cbTurmaEnter(Sender: TObject);
    procedure cbSerieKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbNivelEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbDisciplinasEnter(Sender: TObject);
    procedure spEnsRegularClick(Sender: TObject);
    procedure spDiarioNotasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function NomeMes(nMonth: Integer): String;
  end;

var
  frmDiarioNotas: TfrmDiarioNotas;

implementation

uses uDtModule, ureldiarioclasse, uRelDiarioNotasPreenchimento,
  uRelDiarioNotas, uRelMatriculados, uRelAlunosMatriculados,
  uRelAniversariantes, uRelDiarioNotasPreenchimento_Colegio,
  uRelDiarioNotas_Colegio, uRelDiarioNotasColegio, uRelSimulado,
  uRelSimuladoModeloNovo, uRelEtiquetas,
  uRelDiarioNotasSemPreenchimento_EJA,
  uRelDiarioNotasSemPreenchimento_Colegio;

{$R *.DFM}

function TfrmDiarioNotas.NomeMes(nMonth: Integer): String;
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

procedure TfrmDiarioNotas.cbSerieEnter(Sender: TObject);
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

procedure TfrmDiarioNotas.cbTurmaEnter(Sender: TObject);
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

procedure TfrmDiarioNotas.cbSerieKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;

end;

procedure TfrmDiarioNotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Release;
   frmDiarioNotas:=nil;
end;

procedure TfrmDiarioNotas.cbNivelEnter(Sender: TObject);
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

procedure TfrmDiarioNotas.FormShow(Sender: TObject);
begin
  cbAno.Text:= '2011';
  cbstatus.Text:= 'NORMAL';
end;

procedure TfrmDiarioNotas.cbDisciplinasEnter(Sender: TObject);
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

procedure TfrmDiarioNotas.spEnsRegularClick(Sender: TObject);
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

    frmRelDiarioNotasSemPreenchimento_Colegio:=TfrmRelDiarioNotasSemPreenchimento_Colegio.create(self);
    with frmRelDiarioNotasSemPreenchimento_Colegio.QyMaster do
     begin
      close;
      sql.clear;
      sql.add('SELECT Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSerie, COUNT(*) AS total');
      sql.add('FROM Vw_DiarioClasse');
      sql.add('where Serie = ' + ''''+cbSerie.Text+'''');
      sql.add('and   Nivel = ' + ''''+cbNivel.Text+'''');
      sql.add('and   Turma = ' + ''''+cbTurma.Text+'''');
      sql.add('and   Ano   = ' + cbAno.Text);

      if rdTipoDiario.ItemIndex = 0 then
       sql.add('and   Disciplina = ' + ''''+cbDisciplinas.Text+'''');

      sql.add('GROUP BY Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSerie');
      sql.add('order by Turma');
      open;
     end;

    with frmRelDiarioNotasSemPreenchimento_Colegio.QyDetalhe do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Notas');
      sql.add('where CodSerie = :CodSerie');
      sql.add('and   CodDisciplina = :CodDisciplina');

      if rdTipoDiario.ItemIndex = 0 then
       sql.add('and   Disciplina = ' + ''''+cbDisciplinas.Text+'''');

      sql.add('and   Situacao   = ' + ''''+cbstatus.Text+'''');
      sql.add('and   Turma = :Turma');
      sql.add('and   Ano   = ' + cbAno.Text);
      sql.add('order by Aluno');
      open;
     end;
    frmRelDiarioNotasSemPreenchimento_Colegio.QuickRep1.Preview;
    frmRelDiarioNotasSemPreenchimento_Colegio.QuickRep2.Preview;

  except
   abort;
  end;
end;

procedure TfrmDiarioNotas.spDiarioNotasClick(Sender: TObject);
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

    frmRelDiarioNotasSemPreenchimento_EJA:=TfrmRelDiarioNotasSemPreenchimento_EJA.create(self);
    with frmRelDiarioNotasSemPreenchimento_EJA.QyMaster do
     begin
      close;
      sql.clear;
      sql.add('SELECT Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSerie, COUNT(*) AS total');
      sql.add('FROM Vw_DiarioClasse');
      sql.add('where Serie = ' + ''''+cbSerie.Text+'''');
      sql.add('and   Nivel = ' + ''''+cbNivel.Text+'''');
      sql.add('and   Turma = ' + ''''+cbTurma.Text+'''');
      sql.add('and   Ano   = ' + cbAno.Text);

      if rdTipoDiario.ItemIndex = 0 then
       sql.add('and   Disciplina = ' + ''''+cbDisciplinas.Text+'''');

      sql.add('GROUP BY Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSerie');
      sql.add('order by Turma');
      open;
     end;

    with frmRelDiarioNotasSemPreenchimento_EJA.QyDetalhe do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Notas');
      sql.add('where CodSerie = :CodSerie');
      sql.add('and   CodDisciplina = :CodDisciplina');

      if rdTipoDiario.ItemIndex = 0 then
       sql.add('and   Disciplina = ' + ''''+cbDisciplinas.Text+'''');

      sql.add('and   Situacao   = ' + ''''+cbstatus.Text+'''');
      sql.add('and   Turma = :Turma');
      sql.add('and   Ano   = ' + cbAno.Text);
      sql.add('order by Aluno');
      open;
     end;
    frmRelDiarioNotasSemPreenchimento_EJA.QuickRep1.Preview;
    frmRelDiarioNotasSemPreenchimento_EJA.QuickRep2.Preview;

  except
   abort;
  end;


end;


procedure TfrmDiarioNotas.SpeedButton1Click(Sender: TObject);
begin
 try
      frmRelDiarioNotasPreenchimento_Colegio:=TfrmRelDiarioNotasPreenchimento_Colegio.create(self);
      with frmRelDiarioNotasPreenchimento_Colegio.QyMaster do
       begin
        close;
        sql.clear;
        sql.add('SELECT Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSerie, COUNT(*) AS total');
        sql.add('FROM Vw_DiarioClasse');
        sql.add('where Serie = ' + ''''+cbSerie.Text+'''');
        sql.add('and   Nivel = ' + ''''+cbNivel.Text+'''');
        sql.add('and   Turma = ' + ''''+cbTurma.Text+'''');
        sql.add('and   Ano   = ' + cbAno.Text);

        if rdTipoDiario.ItemIndex = 0 then
         sql.add('and   Disciplina = ' + ''''+cbDisciplinas.Text+'''');

        sql.add('GROUP BY Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSerie');
        sql.add('order by Turma');
        open;
       end;

      with frmRelDiarioNotasPreenchimento_Colegio.QyDetalhe do
       begin
        close;
        sql.clear;
        sql.add('select * from Vw_Notas');
        sql.add('where CodSerie = :CodSerie');
        sql.add('and   CodDisciplina = :CodDisciplina');

        if rdTipoDiario.ItemIndex = 0 then
         sql.add('and   Disciplina = ' + ''''+cbDisciplinas.Text+'''');

        sql.add('and   Situacao   = ' + ''''+cbstatus.Text+'''');
        sql.add('and   Turma = :Turma');
        sql.add('and   Ano   = ' + cbAno.Text);
        sql.add('order by Aluno');
        open;
       end;
      frmRelDiarioNotasPreenchimento_Colegio.QuickRep1.Preview;
      frmRelDiarioNotasPreenchimento_Colegio.QuickRep2.Preview;


 except
 end;
end;

procedure TfrmDiarioNotas.SpeedButton2Click(Sender: TObject);
begin
try
      frmRelDiarioNotasPreenchimento:=TfrmRelDiarioNotasPreenchimento.create(self);
      with frmRelDiarioNotasPreenchimento.QyMaster do
       begin
        close;
        sql.clear;
        sql.add('SELECT Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSerie, COUNT(*) AS total');
        sql.add('FROM Vw_DiarioClasse');
        sql.add('where Serie = ' + ''''+cbSerie.Text+'''');
        sql.add('and   Nivel = ' + ''''+cbNivel.Text+'''');
        sql.add('and   Turma = ' + ''''+cbTurma.Text+'''');
        sql.add('and   Ano   = ' + cbAno.Text);

        if rdTipoDiario.ItemIndex = 0 then
         sql.add('and   Disciplina = ' + ''''+cbDisciplinas.Text+'''');

        sql.add('GROUP BY Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSerie');
        sql.add('order by Turma');
        open;
       end;

      with frmRelDiarioNotasPreenchimento.QyDetalhe do
       begin
        close;
        sql.clear;
        sql.add('select * from Vw_Notas');
        sql.add('where CodSerie = :CodSerie');
        sql.add('and   CodDisciplina = :CodDisciplina');

        if rdTipoDiario.ItemIndex = 0 then
         sql.add('and   Disciplina = ' + ''''+cbDisciplinas.Text+'''');

        sql.add('and   Situacao   = ' + ''''+cbstatus.Text+'''');
        sql.add('and   Turma = :Turma');
        sql.add('and   Ano   = ' + cbAno.Text);
        sql.add('order by Aluno');
        open;
       end;
      frmRelDiarioNotasPreenchimento.QuickRep1.Preview;
      frmRelDiarioNotasPreenchimento.QuickRep2.Preview;

except
 abort;
end;

end;

end.
