object frmcontas: Tfrmcontas
  Left = 212
  Top = 155
  Width = 552
  Height = 435
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
    Width = 544
    Height = 401
    Align = alClient
    TabOrder = 0
    object Shape1: TShape
      Left = 4
      Top = 4
      Width = 532
      Height = 33
      Brush.Color = clRed
      Shape = stRoundRect
    end
    object SpeedButton10: TSpeedButton
      Left = 466
      Top = 320
      Width = 60
      Height = 40
      Hint = 'Cancel'
      Caption = '&Fechar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton10Click
    end
    object Label1: TLabel
      Left = 134
      Top = 353
      Width = 226
      Height = 13
      Caption = 'Digite suas Informa'#231#245'es e tecle "Enter".'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 45
      Width = 528
      Height = 268
      DataSource = DsContas
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Codigo'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 243
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Date'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 88
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Tipo'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 106
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 8
      Top = 6
      Width = 524
      Height = 29
      BevelOuter = bvLowered
      Caption = 'TIPO DE CONTA'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object rdopcao: TRadioGroup
      Left = 4
      Top = 324
      Width = 125
      Height = 77
      Caption = 'Tipo Consulta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        '&N'#186' Conta'
        '&Descri'#231#227'o')
      ParentFont = False
      TabOrder = 3
    end
    object edloc: TEdit
      Left = 132
      Top = 377
      Width = 398
      Height = 23
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object DsContas: TDataSource
    DataSet = QyContas
    Left = 264
    Top = 152
  end
  object QyContas: TQuery
    DatabaseName = 'BDSisceb'
    SQL.Strings = (
      'Select * from Vw_ControleContas')
    Left = 264
    Top = 184
    object QyContasCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'BDPECAS.Tb_Controle_Contas.Codigo'
    end
    object QyContasCodConta: TIntegerField
      FieldName = 'CodConta'
      Origin = 'BDPECAS.Tb_Controle_Contas.CodConta'
    end
    object QyContasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'BDPECAS.Tb_Controle_Contas.Descricao'
      Size = 50
    end
    object QyContasDate: TDateTimeField
      FieldName = 'Date'
      Origin = 'BDPECAS.Tb_Controle_Contas.Date'
    end
    object QyContasTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'BDPECAS.Vw_ControleContas.Tipo'
      Size = 50
    end
  end
  object ActionList1: TActionList
    Left = 184
    Top = 184
    object Consultar: TAction
      Caption = 'Consultar'
      ShortCut = 13
      OnExecute = ConsultarExecute
    end
  end
end
