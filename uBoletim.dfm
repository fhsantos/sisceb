object frmBoletim: TfrmBoletim
  Left = 328
  Top = 173
  BorderStyle = bsDialog
  ClientHeight = 346
  ClientWidth = 459
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
    Width = 459
    Height = 346
    Align = alClient
    BorderStyle = bsSingle
    TabOrder = 0
    object Shape1: TShape
      Left = 1
      Top = 1
      Width = 453
      Height = 4
      Align = alTop
      Pen.Style = psClear
      Shape = stRoundRect
    end
    object Label21: TLabel
      Left = 14
      Top = 55
      Width = 86
      Height = 14
      Caption = 'N'#237'vel de Ensino:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TLabel
      Left = 14
      Top = 116
      Width = 32
      Height = 14
      Caption = 'Seri'#233':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 286
      Top = 116
      Width = 36
      Height = 14
      Caption = 'Turma'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 286
      Top = 183
      Width = 80
      Height = 14
      Caption = 'Situa'#231#227'o Anual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 286
      Top = 55
      Width = 22
      Height = 14
      Caption = 'Ano'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 150
      Top = 183
      Width = 50
      Height = 14
      Caption = 'Matr'#237'cula'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 152
      Top = 248
      Width = 294
      Height = 81
    end
    object spRelatorio: TSpeedButton
      Left = 160
      Top = 264
      Width = 161
      Height = 50
      Hint = 'Ir para...'
      Caption = 'Visualizar Impress'#227'o'
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
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
        333B33F333337F3333373B33333BB33333B337FF33377F33337F3BB3333BB333
        3BB3377FF3377F33377333BB777BB777BB333377FFF77FFF7733330000000000
        B3333377777777777333330FFFFFFFF03333337F3FF3FFF7F333330F00F000F0
        33333F7F77377737FFFFBB0FFF8FFFF0BBB3777F3F33FFF7777F3B0F08700000
        000B377F73F7777777773308880FFFFFF033337F377333333733330807FFFFF8
        033333737FFFFFFF7F33333000000000B3333337777777777FF333BB333BB333
        BB33337733377F3377FF3BB3333BB3333BB3377333377F33377F3B33333BB333
        33B33733333773333373B333333B3333333B7333333733333337}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      OnClick = spRelatorioClick
    end
    object SpeedButton1: TSpeedButton
      Left = 336
      Top = 264
      Width = 101
      Height = 50
      Caption = '&Fechar'
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
      OnClick = SpeedButton1Click
    end
    object Panel2: TPanel
      Left = 1
      Top = 5
      Width = 453
      Height = 36
      Align = alTop
      BevelOuter = bvLowered
      Caption = 'BOLETIM DE NOTAS'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object cbNivel: TComboBox
      Left = 14
      Top = 75
      Width = 267
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 0
      Text = 'ENSINO M'#201'DIO'
      OnEnter = cbNivelEnter
    end
    object cbSerie: TComboBox
      Left = 14
      Top = 136
      Width = 267
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 2
      OnEnter = cbSerieEnter
    end
    object cbTurma: TComboBox
      Left = 286
      Top = 136
      Width = 165
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 3
      OnEnter = cbTurmaEnter
    end
    object cbstatus: TComboBox
      Left = 286
      Top = 203
      Width = 165
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 5
      Text = 'NORMAL'
      Items.Strings = (
        ''
        'ABANDONOU'
        'CONCLUIU'
        'CANCELADO'
        'NORMAL'
        'TRANSFERIDO')
    end
    object cbAno: TComboBox
      Left = 286
      Top = 75
      Width = 165
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 1
      Text = '2011'
      Items.Strings = (
        ''
        '2010'
        '2011')
    end
    object rdgImprimir: TRadioGroup
      Left = 14
      Top = 251
      Width = 133
      Height = 70
      Caption = 'Imprimir'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Individual'
        'Turma')
      ParentFont = False
      TabOrder = 7
      OnClick = rdgImprimirClick
    end
    object edMatricula: TEdit
      Left = 150
      Top = 203
      Width = 129
      Height = 23
      CharCase = ecUpperCase
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      MaxLength = 9
      ParentFont = False
      TabOrder = 4
    end
    object rdTipoBoletim: TRadioGroup
      Left = 14
      Top = 171
      Width = 133
      Height = 70
      Caption = 'Tipo Boletim'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 1
      Items.Strings = (
        'Ensino Regular'
        'EJA')
      ParentFont = False
      TabOrder = 8
      OnClick = rdgImprimirClick
    end
  end
end
