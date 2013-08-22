unit uNotas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, DBTables, Db, ActnList,
  Menus;

type
  TfrmNotas = class(TForm)
    QyConfig: TQuery;
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    cbSerie: TComboBox;
    cbNivel: TComboBox;
    Label2: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    cbTurma: TComboBox;
    cbAno: TComboBox;
    Label4: TLabel;
    ActionList1: TActionList;
    Proximo: TAction;
    Calc_Nota: TAction;
    Anterior: TAction;
    Verif_Nota: TAction;
    upNotas: TUpdateSQL;
    dsNotas: TDataSource;
    QyNotas: TQuery;
    Filtrar: TAction;
    Panel4: TPanel;
    QyNotasMatricula: TIntegerField;
    QyNotasCodDisciplina: TIntegerField;
    QyNotasAno: TIntegerField;
    QyNotasTurma: TStringField;
    QyNotasDisciplina: TStringField;
    Panel3: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    QyNotasAluno: TStringField;
    QyConfigRazao: TStringField;
    QyConfigCNPJ: TStringField;
    QyConfigEndereco: TStringField;
    QyConfigTel: TStringField;
    QyConfigFax: TStringField;
    QyConfigAno: TIntegerField;
    QyConfigDigito: TIntegerField;
    QyConfigMedia: TFloatField;
    Tb_Config: TTable;
    Tb_ConfigRazao: TStringField;
    Tb_ConfigCNPJ: TStringField;
    Tb_ConfigEndereco: TStringField;
    Tb_ConfigTel: TStringField;
    Tb_ConfigFax: TStringField;
    Tb_ConfigAno: TIntegerField;
    Tb_ConfigDigito: TIntegerField;
    Tb_ConfigMedia: TFloatField;
    QyNotasMD1S: TFloatField;
    QyNotasMD2S: TFloatField;
    cbDisciplinas: TComboBox;
    QyNotasUnid1: TStringField;
    QyNotasUnid2: TStringField;
    QyNotasF1: TIntegerField;
    QyNotasF2: TIntegerField;
    QyNotasF3: TIntegerField;
    QyNotasSit: TStringField;
    QyNotasCodSerie: TIntegerField;
    QyNotasUnid3: TStringField;
    QyNotasUnid4: TStringField;
    QyNotasSerie: TStringField;
    QyNotasNivel: TStringField;
    QyNotasMedia: TFloatField;
    QyNotasMediaFinal: TFloatField;
    QyNotasSituacao: TStringField;
    QyNotasPF: TStringField;
    QyNotasRF: TStringField;
    QyNotasMedGlobal: TFloatField;
    spfiltrar: TSpeedButton;
    SpeedButton1: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Senhas1: TMenuItem;
    DBGrid1: TDBGrid;
    Tb_ConfigMediaEja: TFloatField;
    procedure cbSerieEnter(Sender: TObject);
    procedure cbTurmaEnter(Sender: TObject);
    procedure cbDisciplinasEnter(Sender: TObject);
    procedure cbSerieKeyPress(Sender: TObject; var Key: Char);
    procedure spfiltrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QyNotasCalcFields(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure QyNotasBeforePost(DataSet: TDataSet);
    procedure QyNotasNOTA2Validate(Sender: TField);
    procedure QyNotasNOTA3Validate(Sender: TField);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QyNotasAfterCancel(DataSet: TDataSet);
    procedure QyNotasAfterPost(DataSet: TDataSet);
    procedure QyNotasAfterDelete(DataSet: TDataSet);
    procedure cbNivelEnter(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure QyNotasUnid1Validate(Sender: TField);
    procedure QyNotasUnid2Validate(Sender: TField);
    procedure QyNotasUnid3Validate(Sender: TField);
    procedure QyNotasUnid4Validate(Sender: TField);
    procedure Senhas1Click(Sender: TObject);
  private
    { Private declarations }
  procedure PontoporVirgula( var key: char);  public
    { Public declarations }
  end;

var
  frmNotas: TfrmNotas;

implementation

uses uDtModule, uSenhaCaixa;

{$R *.DFM}

procedure TfrmNotas.PontoporVirgula( var key: char);
begin
  if (Key = '.') then
      Key := ',';
end;

procedure TfrmNotas.cbSerieEnter(Sender: TObject);
var
  i:Integer;
begin
try
 i:=0;
 cbSerie.Clear;
 with dtmodule.QySql do
  begin
   close;
   sql.clear;
   sql.add('SELECT * FROM Vw_NivelSerie');
   sql.add('Where Nivel = ' + ''''+cbNivel.Text+'''');
   sql.add('order by Serie');
   open;
  end;

 for i:= i to dtModule.QySql.RecordCount-1 do
  begin
   cbSerie.Items.Add(dtModule.QySql.FieldByname('Serie').AsString);
   dtModule.QySql.Next;
  end;
  dtModule.QySql.close;
except
end;
end;

procedure TfrmNotas.cbTurmaEnter(Sender: TObject);
var
  i:Integer;
begin
try
 i:=0;
 cbTurma.Clear;
 with dtmodule.QySql do
  begin
   close;
   sql.clear;
   sql.add('SELECT * FROM Vw_Turmas');
   sql.add('Where Serie = ' + ''''+cbSerie.Text+'''');
   sql.add('and Nivel = ' + ''''+cbNivel.Text+'''');
   sql.add('order by Turma');
   open;
  end;

 for i:= i to dtModule.QySql.RecordCount-1 do
  begin
   cbTurma.Items.Add(dtModule.QySql.FieldByname('Turma').AsString);
   dtModule.QySql.Next;
  end;
  dtModule.QySql.close;

except
end;

end;

procedure TfrmNotas.cbDisciplinasEnter(Sender: TObject);
var
  i:Integer;
begin
 i:=0;
 cbDisciplinas.Clear;
 with dtmodule.QySql do
  begin
   close;
   sql.clear;
   sql.add('SELECT * FROM Vw_Grades');
   sql.add('Where Serie = ' + ''''+cbSerie.Text+'''');
   sql.add('and   Nivel = ' + ''''+cbNivel.Text+'''');
   sql.add('and   Ano = ' + cbAno.Text);
   sql.add('order by Disciplina');
   open;
  end;

 for i:= i to dtModule.QySql.RecordCount-1 do
  begin
   cbDisciplinas.Items.Add(dtModule.QySql.FieldByname('Disciplina').AsString);
   dtModule.QySql.Next;
  end;
  dtModule.QySql.close;
end;

procedure TfrmNotas.cbSerieKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
    begin
      SelectNext(sender as tWincontrol,true,true);
      key:= #0;
    end;
end;

procedure TfrmNotas.spfiltrarClick(Sender: TObject);
var
  i:integer;
  valor:string;
begin
try

 frmSenhaCaixa:=tfrmSenhaCaixa.Create(self);
 frmSenhaCaixa.ShowModal;

 if dtModule.Senha <> '526' then
  begin
   Application.MessageBox('Senha Inv�lida','Informa��es',mb_ok+mb_iconexclamation);
   SysUtils.Abort;
  end

 else begin
 if (cbSerie.Text = '') then
  begin
    Application.MessageBox('Informe a Serie','Aten��o',MB_OK+MB_ICONINFORMATION);
    SysUtils.Abort;
  end;

 if (cbNivel.Text = '') then
  begin
    Application.MessageBox('Informe o Nivel','Aten��o',MB_OK+MB_ICONINFORMATION);
    SysUtils.Abort;
  end;

 if (cbTurma.Text = '') then
  begin
    Application.MessageBox('Informe a Turma','Aten��o',MB_OK+MB_ICONINFORMATION);
    SysUtils.Abort;
  end;

 if (cbDisciplinas.Text = '') then
  begin
    Application.MessageBox('Informe a Disciplina','Aten��o',MB_OK+MB_ICONINFORMATION);
    SysUtils.Abort;
  end;

 if (cbAno.Text = '') then
  begin
    Application.MessageBox('Informe o Ano','Aten��o',MB_OK+MB_ICONINFORMATION);
    SysUtils.Abort;
  end;

 with QyNotas do
  begin
   close;
   sql.clear;
   sql.add('select * from Vw_Notas');
   sql.add('Where Serie = ' + ''''+cbSerie.Text+'''');
   sql.add('and Turma = ' + ''''+cbTurma.Text+'''');
   sql.add('and Nivel   = ' + ''''+cbNivel.Text+'''');
   sql.add('and Ano   = ' + cbAno.Text);
   sql.add('and Disciplina = ' + ''''+cbDisciplinas.Text+'''');
   sql.add('and Situacao = ' + ''''+'NORMAL'+'''');
   sql.add('order by Aluno');
   open;
  end;
 end;

except
 begin
  Application.MessageBox('Dados incorretos','Ensino',MB_OK+MB_ICONINFORMATION);
  SysUtils.Abort;
 end;
end;
end;

procedure TfrmNotas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 QyNotas.close;
 Tb_Config.close;

 Release;
 frmNotas:= nil;
end;

procedure TfrmNotas.QyNotasCalcFields(DataSet: TDataSet);
var
 Valor:string;
 MD1S,MD2S,Media,Valo,V_I,V_II:Real;
begin
Valor:= '';
//****** M�dia  1� unidade *****************
try
  //******************************************************************//
  QyConfig.open;
  if ((QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value = '**') and (QyNotasUnid4.Value = '**')) then
    begin
//      MD1S := StrtoFloat(QyNotasUnid1.Value)/2;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value = '**') and (QyNotasUnid4.Value = '**')) then
    begin
//      MD1S := StrtoFloat(QyNotasUnid2.Value)/2;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value <> '**') and (QyNotasUnid4.Value = '**')) then
    begin
//      MD1S := StrtoFloat(QyNotasUnid3.Value)/2;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value = '**') and (QyNotasUnid4.Value <> '**')) then
    begin
//      MD1S := StrtoFloat(QyNotasUnid4.Value)/2;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value = '**') and (QyNotasUnid4.Value = '**')) then
    QyNotasMD1S.AsString:= VALOR;

  //valor por valor
  if ((QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value = '**') and (QyNotasUnid4.Value = '**')) then
    begin
      MD1S := (StrtoFloat(QyNotasUnid1.Value)+StrtoFloat(QyNotasUnid2.Value))/2;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value <> '**') and (QyNotasUnid4.Value = '**')) then
    begin
      MD1S := (StrtoFloat(QyNotasUnid1.Value)+StrtoFloat(QyNotasUnid2.Value)+StrtoFloat(QyNotasUnid3.Value))/3;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else
   begin
    MD1S:= (StrToFloat(QyNotasUnid1.Value) + StrToFloat(QyNotasUnid2.Value) + StrToFloat(QyNotasUnid3.Value) + StrToFloat(QyNotasUnid4.Value))/4;
    QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrtoFloat(copy(FloatToStr(MD1S),1,3))));

    if QyNotasMedia.Value >= QyConfigMedia.Value then
     begin
      QyNotasMedGlobal.Value:= QyNotasMedia.Value;
      QyNotasMediaFinal.Value:= QyNotasMedia.Value;
     end;
   end;

   if not ((QyNotasPF.value = '**') or (Trim(QyNotasPF.value) = '')) then
   begin
    if StrToFloat(QyNotasPF.value) > QyNotasMedia.Value then
     begin
       MD1S := (StrToFloat(QyNotasPF.value) + QyNotasMedia.Value)/2;
       QyNotasMedGlobal.Value:= MD1S;

       if QyNotasMedGlobal.Value >= QyConfigMedia.Value then
        begin
         QyNotasMediaFinal.Value:= QyNotasMedGlobal.Value;
        end;
     end;
   end;


   if not ((QyNotasRF.value = '**') or (Trim(QyNotasRF.value) = '')) then
   begin
    if StrToFloat(QyNotasRF.value) > QyNotasMedGlobal.Value then
     begin
       QyNotasMD1S.Value := (StrToFloat(QyNotasRF.value) + QyNotasMedia.Value)/2;
       MD1S:= QyNotasMD1S.Value;
       QyNotasMediaFinal.Value:= QyNotasMD1S.Value;
     end;
   end;


except

end;
end;

procedure TfrmNotas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmNotas.QyNotasBeforePost(DataSet: TDataSet);
begin
try
   if (StrToFloat(QyNotasRF.value) >= QyConfigMedia.Value) then
     QyNotasSit.AsString := 'AM'

   else if (QyNotasMediaFinal.value >= QyConfigMedia.Value) then
     QyNotasSit.AsString := 'AM'


   else if (QyNotasMediaFinal.value < QyConfigMedia.Value) then
     QyNotasSit.AsString := 'RPM'


    else 
     QyNotasSit.AsString := 'REC';
except
//
end;
end;

procedure TfrmNotas.QyNotasNOTA2Validate(Sender: TField);
begin
try
   if (strtofloat(QyNotasUnid2.AsString) > 10) or (strtofloat(QyNotasUnid2.AsString) < 0) then
    begin
     Application.MessageBox('Nota Inv�lida','Aten��o',MB_OK+MB_ICONERROR);
     SysUtils.Abort;
    end;
except
//
end;
end;

procedure TfrmNotas.QyNotasNOTA3Validate(Sender: TField);
begin
try
   if (strtofloat(QyNotasUnid3.AsString) > 10) or (strtofloat(QyNotasUnid3.AsString) < 0) then
    begin
     Application.MessageBox('Nota Inv�lida','Aten��o',MB_OK+MB_ICONERROR);
     SysUtils.Abort;
    end;
except
//
end;
end;

procedure TfrmNotas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
try
if (Column.Field.AsString <> QyNotasAluno.AsString) and
   (Column.Field.AsString <> QyNotasF1.AsString) and
   (Column.Field.AsString <> QyNotasF2.AsString) and
   (Column.Field.AsString <> QyNotasMatricula.AsString) and
   (Column.Field.AsString <> QyNotasCodSerie.AsString)and
   (Column.Field.AsString <> QyNotasCodDisciplina.AsString) and
   (column.Field.AsString <> QyNotasAno.AsString) and
   (column.Field.AsString <> QyNotasSerie.AsString) and
   (column.Field.AsString <> QyNotasTurma.AsString)  and
   (column.Field.AsString <> QyNotasNivel.AsString)  and
   (column.Field.AsString <> QyNotasDisciplina.AsString) then
begin
 Tb_Config.open;
 if not ((Column.Field.AsString = '**') or (Trim(Column.Field.AsString) = '')) then
   if (StrToFloat(Column.Field.AsString) >= Tb_ConfigMediaEja.value) then
     begin
      DBGrid1.Canvas.Font.Color := clBlue;

      DBGrid1.Canvas.TextRect(Rect, Rect.Left, Rect.Top,FormatFloat('#0.0',strtofloat(Column.Field.AsString)));
     end
   else if (StrToFloat(Column.Field.AsString) < Tb_ConfigMediaEja.value) then
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

procedure TfrmNotas.QyNotasAfterCancel(DataSet: TDataSet);
begin
  try
    QyNotas.CancelUpdates;
  except
   abort;

  end;

end;

procedure TfrmNotas.QyNotasAfterPost(DataSet: TDataSet);
begin
  try
    QyNotas.ApplyUpdates;
    QyNotas.CommitUpdates;
  except
   abort;

  end;

end;

procedure TfrmNotas.QyNotasAfterDelete(DataSet: TDataSet);
begin
  try
    QyNotas.ApplyUpdates;
    QyNotas.CommitUpdates;
  except
   abort;

  end;


end;

procedure TfrmNotas.cbNivelEnter(Sender: TObject);
var
  i:Integer;
begin
try
 i:=0;
 cbNivel.Clear;
 with dtmodule.QySql do
  begin
   close;
   sql.clear;
   sql.add('SELECT * FROM Tb_Nivel');
   sql.add('order by Nome');
   open;
  end;

 for i:= i to dtModule.QySql.RecordCount-1 do
  begin
   cbNivel.Items.Add(dtModule.QySql.FieldByname('Nome').AsString);
   dtModule.QySql.Next;
  end;
  dtModule.QySql.close;
except
end;
end;

procedure TfrmNotas.SpeedButton1Click(Sender: TObject);
begin
 close;
end;

procedure TfrmNotas.QyNotasUnid1Validate(Sender: TField);
begin
try
   if (strtofloat(QyNotasUnid1.AsString) > 10) or (strtofloat(QyNotasUnid1.AsString) < 0) then
    begin
     Application.MessageBox('Nota Inv�lida','Aten��o',MB_OK+MB_ICONERROR);
     SysUtils.Abort;
    end;
except
//
end;

end;

procedure TfrmNotas.QyNotasUnid2Validate(Sender: TField);
begin
try
   if (strtofloat(QyNotasUnid2.AsString) > 10) or (strtofloat(QyNotasUnid2.AsString) < 0) then
    begin
     Application.MessageBox('Nota Inv�lida','Aten��o',MB_OK+MB_ICONERROR);
     SysUtils.Abort;
    end;
except
//
end;

end;

procedure TfrmNotas.QyNotasUnid3Validate(Sender: TField);
begin
try
   if (strtofloat(QyNotasUnid3.AsString) > 10) or (strtofloat(QyNotasUnid3.AsString) < 0) then
    begin
     Application.MessageBox('Nota Inv�lida','Aten��o',MB_OK+MB_ICONERROR);
     SysUtils.Abort;
    end;
except
//
end;

end;

procedure TfrmNotas.QyNotasUnid4Validate(Sender: TField);
begin
try
   if (strtofloat(QyNotasUnid4.AsString) > 10) or (strtofloat(QyNotasUnid4.AsString) < 0) then
    begin
     Application.MessageBox('Nota Inv�lida','Aten��o',MB_OK+MB_ICONERROR);
     SysUtils.Abort;
    end;
except
//
end;

end;

procedure TfrmNotas.Senhas1Click(Sender: TObject);
begin
  ShowMessage('A senha �: "526"');
end;

end.
