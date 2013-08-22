object frmOpcaoFinanceiro: TfrmOpcaoFinanceiro
  Left = 366
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 363
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 464
    Height = 30
    Align = alTop
    Caption = 'Impress'#227'o Financeiro'
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
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 464
    Height = 327
    Align = alClient
    TabOrder = 2
    object Label21: TLabel
      Left = 3
      Top = 79
      Width = 59
      Height = 15
      Caption = 'Data In'#237'cio'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spFechar: TSpeedButton
      Left = 380
      Top = 260
      Width = 75
      Height = 50
      Caption = '&Sair'
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
      Top = 147
      Width = 50
      Height = 15
      Caption = 'Situa'#231#227'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 212
      Top = 79
      Width = 55
      Height = 15
      Caption = 'Data Final'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spRelatorio: TSpeedButton
      Left = 303
      Top = 260
      Width = 75
      Height = 50
      Hint = 'Ir para...'
      Caption = 'Imprimir'
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
    object Label2: TLabel
      Left = 212
      Top = 147
      Width = 112
      Height = 15
      Caption = 'M'#234's de Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 3
      Top = 207
      Width = 110
      Height = 15
      Caption = 'Ano de Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 212
      Top = 207
      Width = 40
      Height = 15
      Caption = 'Turma:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 3
      Top = 262
      Width = 113
      Height = 15
      Caption = 'Situa'#231#227'o - Matricula'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 212
      Top = 15
      Width = 32
      Height = 14
      Caption = 'Serie:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label22: TLabel
      Left = 3
      Top = 15
      Width = 86
      Height = 14
      Caption = 'Nivel de Ensino:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbSituacao: TComboBox
      Left = 3
      Top = 167
      Width = 206
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 4
      OnKeyPress = cbFormaPagtoKeyPress
      Items.Strings = (
        ''
        'PAGO'
        'CANCELADO'
        'EM ABERTA'
        'EXTORNADA')
    end
    object dtInicio: TDateTimePicker
      Left = 3
      Top = 100
      Width = 205
      Height = 23
      Date = 38904.418414525500000000
      Time = 38904.418414525500000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dtFinal: TDateTimePicker
      Left = 212
      Top = 100
      Width = 248
      Height = 23
      Date = 38904.418414525500000000
      Time = 38904.418414525500000000
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object cbMes: TComboBox
      Left = 212
      Top = 167
      Width = 248
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 5
      OnKeyPress = cbFormaPagtoKeyPress
      Items.Strings = (
        ''
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object cbAno: TComboBox
      Left = 3
      Top = 227
      Width = 206
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 6
      Text = '2011'
      OnKeyPress = cbFormaPagtoKeyPress
      Items.Strings = (
        ''
        '2010'
        '2011')
    end
    object cbTurma: TComboBox
      Left = 212
      Top = 227
      Width = 248
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 15
      ParentFont = False
      TabOrder = 7
      OnKeyPress = cbFormaPagtoKeyPress
      Items.Strings = (
        ''
        'A'
        'B'
        'C')
    end
    object cbStatus: TComboBox
      Left = 3
      Top = 282
      Width = 206
      Height = 23
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 8
      Text = 'NORMAL'
      OnKeyPress = cbFormaPagtoKeyPress
      Items.Strings = (
        ''
        'ABANDONOU'
        'CONCLUIU'
        'CANCELADO'
        'NORMAL'
        'TRANSFERIDO')
    end
    object cbSerie: TComboBox
      Left = 212
      Top = 35
      Width = 248
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
      OnEnter = cbSerieEnter
    end
    object cbNivel: TComboBox
      Left = 3
      Top = 35
      Width = 205
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
      OnEnter = cbNivelEnter
    end
  end
end
