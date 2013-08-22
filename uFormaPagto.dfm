object frmFormaPagto: TfrmFormaPagto
  Left = 293
  Top = 101
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 529
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 477
    Height = 30
    Align = alTop
    Caption = 'DADOS PARA PAGAMENTO'
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
    Left = 0
    Top = 30
    Width = 477
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
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 477
    Height = 493
    Align = alClient
    TabOrder = 2
    object Label1: TLabel
      Left = 56
      Top = 258
      Width = 169
      Height = 29
      Caption = 'Valor pago R$:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 134
      Top = 315
      Width = 91
      Height = 29
      Caption = 'Parcela:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 190
      Top = 365
      Width = 35
      Height = 29
      Caption = 'de:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spFechar: TSpeedButton
      Left = 328
      Top = 438
      Width = 73
      Height = 43
      Caption = '&Pagar'
      Flat = True
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      OnClick = spFecharClick
    end
    object Label4: TLabel
      Left = 3
      Top = 87
      Width = 88
      Height = 24
      Caption = 'Situa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 3
      Top = 163
      Width = 205
      Height = 24
      Caption = 'Data de Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -21
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spCancelar: TSpeedButton
      Left = 402
      Top = 438
      Width = 62
      Height = 43
      Caption = '&Cancelar'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      OnClick = spCancelarClick
    end
    object edValor: TEdit
      Left = 240
      Top = 258
      Width = 219
      Height = 40
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnExit = edValorExit
      OnKeyPress = edValorKeyPress
    end
    object edParc1: TEdit
      Left = 240
      Top = 313
      Width = 219
      Height = 40
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnKeyPress = edValorKeyPress
    end
    object edParc2: TEdit
      Left = 240
      Top = 362
      Width = 219
      Height = 40
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnKeyPress = edValorKeyPress
    end
    object cbSituacao: TComboBox
      Left = 3
      Top = 115
      Width = 462
      Height = 35
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 27
      ParentFont = False
      TabOrder = 0
      OnKeyPress = cbFormaPagtoKeyPress
      Items.Strings = (
        'PAGO'
        'CANCELADO'
        'EM ABERTA')
    end
    object dtPagamento: TDateTimePicker
      Left = 3
      Top = 190
      Width = 462
      Height = 35
      Date = 39510.478124456000000000
      Time = 39510.478124456000000000
      DateFormat = dfLong
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -24
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object rdForma: TRadioGroup
      Left = 3
      Top = 8
      Width = 462
      Height = 73
      Caption = 'FORMA DE PAGAMENTO'
      Columns = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Dinheiro'
        'Cart'#227'o'
        'Cheque'
        'Boleto')
      ParentFont = False
      TabOrder = 5
      OnClick = rdFormaClick
    end
  end
end
