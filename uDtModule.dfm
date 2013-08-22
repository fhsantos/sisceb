object dtModule: TdtModule
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 477
  Top = 269
  Height = 480
  Width = 696
  object dbAcademico: TDatabase
    AliasName = 'BDSisceb'
    DatabaseName = 'BDESisceb'
    LoginPrompt = False
    Params.Strings = (
      'USER NAME=sa'
      'PASSWORD=sqlbde')
    SessionName = 'Default'
    Left = 24
    Top = 16
  end
  object QySql: TQuery
    DatabaseName = 'BDESisceb'
    Left = 24
    Top = 64
  end
  object QyGrade: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * From Vw_Grades')
    Left = 24
    Top = 128
    object QyGradeDisciplina: TStringField
      FieldName = 'Disciplina'
      Origin = 'BDACADEMICO.Vw_Grades.Disciplina'
      Size = 30
    end
    object QyGradeCodDisciplina: TIntegerField
      FieldName = 'CodDisciplina'
      Origin = 'BDACADEMICO.Vw_Grades.CodDisciplina'
    end
    object QyGradeAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDACADEMICO.Vw_Grades.Ano'
    end
    object QyGradeSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'BDACADEMICO.Vw_Grades.Situacao'
      FixedChar = True
      Size = 1
    end
    object QyGradeCargaHoraria: TFloatField
      FieldName = 'CargaHoraria'
      Origin = 'BDEXPOENTE.Vw_Grades.CargaHoraria'
    end
    object QyGradeCodNivel: TIntegerField
      FieldName = 'CodNivel'
      Origin = 'BDEXPOENTE.Vw_Grades.CodNivel'
    end
    object QyGradeSerie: TStringField
      FieldName = 'Serie'
      Origin = 'BDEXPOENTE.Vw_Grades.Serie'
      Size = 50
    end
    object QyGradeNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'BDEXPOENTE.Vw_Grades.Nivel'
      Size = 50
    end
    object QyGradeCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Vw_Grades.CodSerie'
    end
  end
end
