object frmGrades: TfrmGrades
  Left = 289
  Top = 53
  Width = 696
  Height = 736
  Caption = 'Grade'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 702
    Align = alClient
    TabOrder = 0
    object Panel5: TPanel
      Left = 16
      Top = -1
      Width = 657
      Height = 23
      Caption = 'RELA'#199#195'O DE CURSOS'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel2: TPanel
      Left = 16
      Top = 413
      Width = 657
      Height = 23
      Caption = 'RELA'#199#195'O DE DISCIPLINAS'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 21
      Width = 657
      Height = 394
      DataSource = DsCursos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodSerie'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Curso'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Comic Sans MS'
          Title.Font.Style = [fsBold]
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Serie'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Comic Sans MS'
          Title.Font.Style = [fsBold]
          Width = 250
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nivel'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Comic Sans MS'
          Title.Font.Style = [fsBold]
          Width = 300
          Visible = True
        end>
    end
    object DBGrid2: TDBGrid
      Left = 16
      Top = 437
      Width = 657
      Height = 238
      DataSource = DsGrade
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'Disciplina'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Comic Sans MS'
          Title.Font.Style = [fsBold]
          Width = 406
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodDisciplina'
          Title.Alignment = taCenter
          Title.Caption = 'C'#243'd. Disc'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Comic Sans MS'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Semestre'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Comic Sans MS'
          Title.Font.Style = [fsBold]
          Width = 66
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Periodo'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Comic Sans MS'
          Title.Font.Style = [fsBold]
          Width = 61
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 594
      Top = 676
      Width = 75
      Height = 25
      Caption = '&Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn1Click
      Kind = bkClose
    end
  end
  object DsCursos: TDataSource
    DataSet = QySerie
    Left = 504
    Top = 64
  end
  object QySerie: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * From Vw_NivelSerie')
    Left = 536
    Top = 64
    object QySerieCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Vw_NivelSerie.CodSerie'
    end
    object QySerieCodNivel: TIntegerField
      FieldName = 'CodNivel'
      Origin = 'BDEXPOENTE.Vw_NivelSerie.CodNivel'
    end
    object QySerieSerie: TStringField
      FieldName = 'Serie'
      Origin = 'BDEXPOENTE.Vw_NivelSerie.Serie'
      Size = 50
    end
    object QySerieNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'BDEXPOENTE.Vw_NivelSerie.Nivel'
      Size = 50
    end
  end
  object QyGrade: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select *'
      ' From Vw_Grades')
    Left = 536
    Top = 328
    object QyGradeDisciplina: TStringField
      FieldName = 'Disciplina'
      Origin = 'BDEXPOENTE.Vw_Grades.Disciplina'
      Size = 30
    end
    object QyGradeCodDisciplina: TIntegerField
      FieldName = 'CodDisciplina'
      Origin = 'BDEXPOENTE.Vw_Grades.CodDisciplina'
    end
    object QyGradeAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDEXPOENTE.Vw_Grades.Ano'
    end
    object QyGradeSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'BDEXPOENTE.Vw_Grades.Situacao'
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
  object DsGrade: TDataSource
    DataSet = QyGrade
    Left = 504
    Top = 328
  end
end
