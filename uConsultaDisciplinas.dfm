object frmConsultaDisciplinas: TfrmConsultaDisciplinas
  Left = 359
  Top = 134
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 384
  ClientWidth = 466
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
    Width = 466
    Height = 384
    Align = alClient
    TabOrder = 0
    object spSair: TSpeedButton
      Left = 369
      Top = 356
      Width = 67
      Height = 25
      Caption = '&Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = spSairClick
    end
    object Label1: TLabel
      Left = 5
      Top = 48
      Width = 242
      Height = 14
      Caption = 'Escolha a disciplina e clique no bot'#227'o sair....:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 464
      Height = 30
      Align = alTop
      Caption = 'M'#243'dulo de Consulta'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 1
      Top = 31
      Width = 464
      Height = 6
      Align = alTop
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 71
      Width = 463
      Height = 282
      DataSource = DsDisciplinas
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
      OnDblClick = spSairClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'CodDisciplina'
          Title.Alignment = taCenter
          Title.Caption = 'Cod. Disciplina'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 230
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Abreviado'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 97
          Visible = True
        end>
    end
  end
  object DsDisciplinas: TDataSource
    DataSet = QyDisciplinas
    Left = 296
  end
  object QyDisciplinas: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * From Tb_Disciplinas')
    Left = 328
    object QyDisciplinasCodDisciplina: TIntegerField
      FieldName = 'CodDisciplina'
      Origin = 'BDACADEMICO.Tb_Disciplinas.CodDisciplina'
      DisplayFormat = '00000'
    end
    object QyDisciplinasNome: TStringField
      FieldName = 'Nome'
      Origin = 'BDACADEMICO.Tb_Disciplinas.Nome'
      Size = 30
    end
    object QyDisciplinasAbreviado: TStringField
      FieldName = 'Abreviado'
      Origin = 'BDACADEMICO.Tb_Disciplinas.Abreviado'
      FixedChar = True
      Size = 15
    end
  end
end
