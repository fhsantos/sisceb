object frmListaContas: TfrmListaContas
  Left = 298
  Top = 156
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 541
  ClientWidth = 600
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
    Width = 600
    Height = 541
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 49
      Width = 238
      Height = 14
      Caption = 'Digite aqui abaixo os dados para consulta....'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 528
      Top = 510
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
      Width = 463
      Height = 23
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = edConsultarChange
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 112
      Width = 586
      Height = 393
      DataSource = DsLista
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
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
          FieldName = 'CodDescricao'
          Title.Alignment = taCenter
          Title.Caption = 'Cod. Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 390
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Status'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 53
          Visible = True
        end>
    end
  end
  object QyLista: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * from Tb_Descricao')
    Left = 333
    Top = 3
    object QyListaCodDescricao: TIntegerField
      FieldName = 'CodDescricao'
      Origin = 'BDSANCLAU.Tb_Descricao.CodDescricao'
      DisplayFormat = '00000'
    end
    object QyListaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'BDSANCLAU.Tb_Descricao.Descricao'
      Size = 100
    end
    object QyListaStatus: TStringField
      FieldName = 'Status'
      Origin = 'BDSANCLAU.Tb_Descricao.Status'
      FixedChar = True
      Size = 1
    end
  end
  object DsLista: TDataSource
    DataSet = QyLista
    Left = 368
    Top = 4
  end
end
