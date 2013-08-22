unit uBoletim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons;

type
  TfrmBoletim = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Shape1: TShape;
    Label21: TLabel;
    cbNivel: TComboBox;
    Label12: TLabel;
    cbSerie: TComboBox;
    Label23: TLabel;
    cbTurma: TComboBox;
    Label9: TLabel;
    cbstatus: TComboBox;
    Label6: TLabel;
    cbAno: TComboBox;
    rdgImprimir: TRadioGroup;
    Label1: TLabel;
    edMatricula: TEdit;
    Bevel1: TBevel;
    spRelatorio: TSpeedButton;
    SpeedButton1: TSpeedButton;
    rdTipoBoletim: TRadioGroup;
    procedure cbSerieEnter(Sender: TObject);
    procedure cbNivelEnter(Sender: TObject);
    procedure cbTurmaEnter(Sender: TObject);
    procedure rdgImprimirClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure spRelatorioClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  procedure Codigos;
  public
    { Public declarations }
  end;

var
  frmBoletim: TfrmBoletim;

implementation

uses uDtModule, uRelBoletim_Colegio, uRelBoletim;


{$R *.DFM}

procedure TfrmBoletim.Codigos;
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
     end;

  except
   abort;
  end;
end;

procedure TfrmBoletim.cbSerieEnter(Sender: TObject);
 var
  i:Integer;
begin
    cbSerie.Clear;
    with Dtmodule.QySql do
     begin
      close;
      sql.clear;
      sql.add('Select * from Tb_Series');
      sql.add('Order by Nome');
      open;
     end;

    for i:= 0 to Dtmodule.QySql.RecordCount-1 do
     begin
      cbSerie.Items.Add(Dtmodule.QySql.FieldByname('Nome').AsString);
      Dtmodule.QySql.Next;
     end;
       Dtmodule.QySql.close;



end;

procedure TfrmBoletim.cbNivelEnter(Sender: TObject);
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

procedure TfrmBoletim.cbTurmaEnter(Sender: TObject);
 var
  i:Integer;
begin
    cbTurma.Clear;
    with Dtmodule.QySql do
     begin
      close;
      sql.clear;
      sql.add('Select * from Vw_Turmas');
      sql.add('Where Serie = ' + ''''+cbSerie.Text+'''');
      sql.add('Order by Turma');
      open;
     end;

    for i:= 0 to Dtmodule.QySql.RecordCount-1 do
     begin
      cbTurma.Items.Add(Dtmodule.QySql.FieldByname('Turma').AsString);
      Dtmodule.QySql.Next;
     end;
      Dtmodule.QySql.close;



end;

procedure TfrmBoletim.rdgImprimirClick(Sender: TObject);
begin
  if rdgImprimir.ItemIndex = 0 then
   edMatricula.SetFocus;
end;

procedure TfrmBoletim.SpeedButton1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmBoletim.spRelatorioClick(Sender: TObject);
begin
  try
    Codigos;
    if rdTipoBoletim.ItemIndex = 0 then
     begin
        frmRelBoletim_Colegio:=TfrmRelBoletim_Colegio.create(self);
        with frmRelBoletim_Colegio.QyMaster do
         begin
          close;
          sql.clear;
          sql.add('select * from Vw_AlunosMatricula');
          sql.add('Where   Serie  = ' + ''''+cbSerie.Text+'''');
          sql.add('and   Nivel  = ' + ''''+cbNivel.Text+'''');
          sql.add('and   Ano         = ' + cbAno.Text);
          sql.add('and   Turma       = ' + ''''+cbTurma.Text+'''');
          sql.add('and   Situacao    = ' + ''''+cbstatus.Text+'''');

          if rdgImprimir.ItemIndex = 0 then
           sql.add('and Matricula = ' + edMatricula.Text);

          sql.add('order by Nome');
          open;
         end;

        with frmRelBoletim_Colegio.QyNotas do
         begin
          close;
          sql.clear;
          sql.add('select * from Vw_Notas_Colegio');
          sql.add('Where     CodSerie  = :CodSerie');
          sql.add('and     Matricula   = :Matricula');
          sql.add('and   Ano         = ' + cbAno.Text);
          sql.add('and   Turma         = ' + ''''+cbTurma.Text+'''');
          sql.add('order by Disciplina');
          open;
         end;
        frmRelBoletim_Colegio.QuickRep2.Preview;
     end;
    if rdTipoBoletim.ItemIndex = 1 then
     begin
      frmRelBoletim:=TfrmRelBoletim.create(self);
      with frmRelBoletim.QyMaster do
       begin
        close;
        sql.clear;
        sql.add('select * from Vw_AlunosMatricula');
        sql.add('Where   Serie  = ' + ''''+cbSerie.Text+'''');
        sql.add('and   Nivel  = ' + ''''+cbNivel.Text+'''');
        sql.add('and   Ano         = ' + cbAno.Text);
        sql.add('and   Turma       = ' + ''''+cbTurma.Text+'''');
        sql.add('and   Situacao    = ' + ''''+cbstatus.Text+'''');
        open;
       end;
      with frmRelBoletim.QyNotas do
       begin
        close;
        sql.clear;
        sql.add('select * from Vw_Matricula_Disciplinas');
        sql.add('Where     CodSerie  = :CodSerie');
        sql.add('and     Matricula   = :Matricula');
        sql.add('and   Ano         = ' + cbAno.Text);
        sql.add('and   Turma         = ' + ''''+cbTurma.Text+'''');
        sql.add('order by Disciplina');
        open;
       end;
      frmRelBoletim.QuickRep2.Preview;
     end;

{    frmRelBoletim:=TfrmRelBoletim.create(self);
    with frmRelBoletim.QyMaster do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_AlunosMatricula');
      sql.add('Where   CodSerie  = ' + dtModule.CodSerie);
      sql.add('and   Ano         = ' + cbAno.Text);
      sql.add('and   Turma       = ' + ''''+cbTurma.Text+'''');
      sql.add('and   Situacao    = ' + ''''+cbstatus.Text+'''');

      if rdgImprimir.ItemIndex = 0 then
       sql.add('and Matricula = ' + edMatricula.Text);

      sql.add('order by Nome');
      open;
     end;

    with frmRelBoletim.QyNotas do
     begin
      close;
      sql.clear;
      sql.add('select * from Vw_Matricula_Disciplinas');
      sql.add('Where     CodSerie  = :CodSerie');
      sql.add('and     Matricula   = :Matricula');
      sql.add('and   Ano         = ' + cbAno.Text);
      sql.add('and   Turma         = ' + ''''+cbTurma.Text+'''');
      sql.add('order by Disciplina');
      open;
     end;
    frmRelBoletim.QuickRep2.Preview;}

  except

  end;

end;

procedure TfrmBoletim.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmBoletim.Release;
  frmBoletim:=nil;
end;

end.
