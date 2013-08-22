unit uDtModule;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables,StdCtrls, ComCtrls,Buttons;

type
  TdtModule = class(TDataModule)
    dbAcademico: TDatabase;
    QySql: TQuery;
    QyGrade: TQuery;
    QyGradeDisciplina: TStringField;
    QyGradeCodDisciplina: TIntegerField;
    QyGradeAno: TIntegerField;
    QyGradeSituacao: TStringField;
    QyGradeCargaHoraria: TFloatField;
    QyGradeCodNivel: TIntegerField;
    QyGradeSerie: TStringField;
    QyGradeNivel: TStringField;
    QyGradeCodSerie: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Nome,Matricula,Digito,Ano,CodDisciplina,Disciplina,Situacao:String;
    CodNivel,CodSerie,Colegio,Serie,Turma,Nivel,Conta:String;
    FormaPagto,CodUser,CodForma,Usuario,Senha,descricao_conta,Descricao_Forma,Tipo,DtPagto,DtCadastro:String;
    Valor:Real;
    Parc1,Parc2,codigo,codconta,Tag,Mes,CodDescricao,CodMov,Dia:Integer;

  end;

var
  dtModule: TdtModule;

implementation        
{$R *.DFM}


procedure TdtModule.DataModuleCreate(Sender: TObject);
begin
  dbAcademico.Connected:=true;
end;

procedure TdtModule.DataModuleDestroy(Sender: TObject);
begin
  dbAcademico.Connected:=false;

end;

end.
