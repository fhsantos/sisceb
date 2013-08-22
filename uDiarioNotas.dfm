object frmDiarioNotas: TfrmDiarioNotas
  Left = 321
  Top = 106
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  ClientHeight = 432
  ClientWidth = 496
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
  object pnName: TPanel
    Left = 0
    Top = 6
    Width = 496
    Height = 30
    Align = alTop
    Caption = 
      '*************************DI'#193'RIO DE NOTAS************************' +
      '***'
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
    Top = 0
    Width = 496
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
    Width = 496
    Height = 396
    Align = alClient
    TabOrder = 2
    object Label21: TLabel
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
      Left = 12
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
    object Label23: TLabel
      Left = 322
      Top = 67
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
    object Label6: TLabel
      Left = 12
      Top = 67
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
    object Label9: TLabel
      Left = 131
      Top = 67
      Width = 69
      Height = 14
      Caption = 'Status Anual'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 12
      Top = 170
      Width = 61
      Height = 14
      Caption = 'M'#234's Di'#225'rio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 12
      Top = 119
      Width = 55
      Height = 14
      Caption = 'Disciplina:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spEnsRegular: TSpeedButton
      Left = 165
      Top = 230
      Width = 161
      Height = 80
      Caption = 'Ensino Regular - Normal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      OnClick = spEnsRegularClick
    end
    object spDiarioNotas: TSpeedButton
      Left = 326
      Top = 230
      Width = 161
      Height = 80
      Caption = 'EJA - Normal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      OnClick = spDiarioNotasClick
    end
    object SpeedButton1: TSpeedButton
      Left = 165
      Top = 310
      Width = 161
      Height = 80
      Caption = 'Ensino Regular - Notas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 326
      Top = 310
      Width = 161
      Height = 80
      Caption = 'EJA - Notas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555FFFFFFFFFF555550000000000
        55555577777777775F55500B8B8B8B8B05555775F555555575F550F0B8B8B8B8
        B05557F75F555555575F50BF0B8B8B8B8B0557F575FFFFFFFF7F50FBF0000000
        000557F557777777777550BFBFBFBFB0555557F555555557F55550FBFBFBFBF0
        555557F555555FF7555550BFBFBF00055555575F555577755555550BFBF05555
        55555575FFF75555555555700007555555555557777555555555555555555555
        5555555555555555555555555555555555555555555555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object cbSerie: TComboBox
      Left = 212
      Top = 35
      Width = 277
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
      OnKeyPress = cbSerieKeyPress
    end
    object cbNivel: TComboBox
      Left = 12
      Top = 35
      Width = 196
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
      OnKeyPress = cbSerieKeyPress
    end
    object cbTurma: TComboBox
      Left = 322
      Top = 87
      Width = 164
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
      OnEnter = cbTurmaEnter
      OnKeyPress = cbSerieKeyPress
    end
    object cbAno: TComboBox
      Left = 12
      Top = 87
      Width = 114
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
      OnKeyPress = cbSerieKeyPress
      Items.Strings = (
        ''
        '2008'
        '2009'
        '2010'
        '2011')
    end
    object cbstatus: TComboBox
      Left = 131
      Top = 87
      Width = 182
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
      OnKeyPress = cbSerieKeyPress
      Items.Strings = (
        ''
        'ABANDONOU'
        'CANCELADO'
        'NORMAL'
        'TRANSFERIDO')
    end
    object cbMes: TComboBox
      Left = 12
      Top = 190
      Width = 474
      Height = 27
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 19
      ParentFont = False
      TabOrder = 6
      OnKeyPress = cbSerieKeyPress
      Items.Strings = (
        ''
        'JANEIRO'
        'FEVEREIRO'
        'MAR'#199'O'
        'ABRIL'
        'MAIO'
        'JUNHO'
        'JULHO'
        'AGOSTO'
        'SETEMBRO'
        'OUTUBRO'
        'NOVEMBRO'
        'DEZEMBRO')
    end
    object cbDisciplinas: TComboBox
      Left = 12
      Top = 136
      Width = 474
      Height = 27
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 19
      ParentFont = False
      TabOrder = 5
      OnEnter = cbDisciplinasEnter
      OnKeyPress = cbSerieKeyPress
    end
    object rdTipoDiario: TRadioGroup
      Left = 12
      Top = 224
      Width = 153
      Height = 167
      Caption = 'Tipo Di'#225'rio:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      Items.Strings = (
        'Por Disciplina'
        'Todas as Disciplinas')
      ParentFont = False
      TabOrder = 7
    end
  end
  object ActionList1: TActionList
    Left = 376
    Top = 180
    object Action1: TAction
      Caption = 'Action1'
    end
    object Action2: TAction
      Caption = 'Action2'
    end
  end
end
