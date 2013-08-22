object frmConsultaMatricula: TfrmConsultaMatricula
  Left = 284
  Top = 154
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 360
  ClientWidth = 671
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
    Width = 671
    Height = 360
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 49
      Width = 346
      Height = 14
      Caption = 'Digite aqui abaixo os dados para consulta, depois tecle "ENTER"'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 603
      Top = 328
      Width = 65
      Height = 27
      Caption = '&Fechar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object rdgConsulta: TRadioGroup
      Left = 5
      Top = 7
      Width = 121
      Height = 86
      Caption = 'Tipo de Consulta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'Matricula')
      ParentFont = False
      TabOrder = 1
    end
    object edConsultar: TEdit
      Left = 132
      Top = 71
      Width = 533
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 112
      Width = 665
      Height = 211
      DataSource = dsAlunos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
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
      OnDblClick = SpeedButton1Click
      Columns = <
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 306
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Serie'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 272
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Ano'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end>
    end
  end
  object QyAlunos: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'SELECT *'
      'FROM Vw_AlunosMatricula')
    Left = 597
    Top = 11
    object QyAlunosMatricula: TIntegerField
      FieldName = 'Matricula'
      Origin = 'BDACADEMICO.Vw_AlunosMatricula.Matricula'
    end
    object QyAlunosAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDACADEMICO.Vw_AlunosMatricula.Ano'
    end
    object QyAlunosTurma: TStringField
      FieldName = 'Turma'
      Origin = 'BDACADEMICO.Vw_AlunosMatricula.Turma'
      FixedChar = True
      Size = 1
    end
    object QyAlunosSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'BDACADEMICO.Vw_AlunosMatricula.Situacao'
      FixedChar = True
      Size = 15
    end
    object QyAlunosDt_Matricula: TDateTimeField
      FieldName = 'Dt_Matricula'
      Origin = 'BDACADEMICO.Vw_AlunosMatricula.Dt_Matricula'
    end
    object QyAlunosSerie: TStringField
      FieldName = 'Serie'
      Origin = 'BDEXPOENTE.Vw_AlunosMatricula.Serie'
      Size = 50
    end
    object QyAlunosCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Vw_AlunosMatricula.CodSerie'
    end
    object QyAlunosNome: TStringField
      FieldName = 'Nome'
      Origin = 'BDEXPOENTE.Vw_AlunosMatricula.Nome'
      Size = 80
    end
    object QyAlunosNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'BDEXPOENTE.Vw_AlunosMatricula.Nivel'
      Size = 50
    end
  end
  object dsAlunos: TDataSource
    DataSet = QyAlunos
    Left = 632
    Top = 12
  end
  object ActionList1: TActionList
    Left = 600
    Top = 48
    object Consultar: TAction
      Caption = 'Consultar'
      ShortCut = 13
      OnExecute = ConsultarExecute
    end
  end
end
