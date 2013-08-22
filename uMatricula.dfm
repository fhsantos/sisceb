object frmMatricula: TfrmMatricula
  Left = 172
  Top = 89
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 666
  ClientWidth = 841
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 666
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 753
      Top = 37
      Width = 87
      Height = 628
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 0
      object spNovo: TSpeedButton
        Left = 5
        Top = 9
        Width = 75
        Height = 50
        Hint = 'Insert'
        Caption = '&Matricular F1'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF0000FF
          FF0000FFFF00FF00FF0084848400848484008484840000FFFF0000FFFF008484
          840084848400848484008484840000FFFF0000FFFF00FF00FF00FF00FF00FF00
          FF0000FFFF000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000084848400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000084848400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000084848400FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000084848400FF00FF00FF00FF0000FFFF0000FF
          FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF00FF00FF00FF00FF0000FF
          FF0000FFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF000000000000FFFF0000FFFF0000FFFF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000FF00FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000FFFF00000000000000000000000000000000000000000000000000FF00
          FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF00FF00FF00FF00FF0000FF
          FF0000FFFF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00
          FF00FF00FF00FF00FF00FF00FF0000FFFF0000FFFF00FF00FF0000FFFF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000FFFF00}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = spNovoClick
      end
      object spExcluir: TSpeedButton
        Left = 5
        Top = 62
        Width = 75
        Height = 50
        Hint = 'Delete'
        Caption = '&Excluir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF000000000000000000000000000000000000000000000000000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00848484008484840084848400848484008484
          84008484840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00FFFFFF0000000000C6C6C60000000000C6C6C6000000
          0000848484008484840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00FFFFFF0000000000C6C6C60000000000848484000000
          0000848484008484840000000000FF00FF00FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF008484840084848400C6C6C60000000000C6C6C6008484
          840000000000848484008484840000000000FF00FF00FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF0000000000C6C6C600C6C6C6000000000084848400C6C6
          C60000000000848484008484840000000000FF00FF0000000000000000000000
          0000FFFFFF00FFFFFF0000000000C6C6C600C6C6C60000000000C6C6C6008484
          84000000000084848400848484000000000000000000FF00FF00FF00FF000000
          0000FFFFFF00FFFFFF008484840084848400C6C6C6000000000084848400C6C6
          C60000000000848484008484840000000000FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00FFFFFF0000000000C6C6C60000000000C6C6C6000000
          0000848484008484840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00FFFFFF0000000000C6C6C60000000000848484000000
          0000848484008484840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000FFFFFF00C6C6C600C6C6C600C6C6C60084848400848484008484
          8400848484008484840000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000008484840084848400848484000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = spExcluirClick
      end
      object spSalvar: TSpeedButton
        Left = 5
        Top = 116
        Width = 75
        Height = 50
        Hint = 'Post'
        Caption = '&Registrar F2'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          0000C6C6C600C6C6C600000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          0000C6C6C600C6C6C600000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          0000C6C6C600C6C6C600000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          00000000000000000000000000000084840000000000FF00FF00FF00FF000000
          0000008484000084840000848400008484000084840000848400008484000084
          84000084840000848400008484000084840000000000FF00FF00FF00FF000000
          0000008484000084840000000000000000000000000000000000000000000000
          00000000000000000000008484000084840000000000FF00FF00FF00FF000000
          00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600000000000084840000000000FF00FF00FF00FF000000
          00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600000000000000000000000000FF00FF00FF00FF000000
          00000084840000000000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C60000000000C6C6C60000000000FF00FF00FF00FF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = spSalvarClick
      end
      object spAlterar: TSpeedButton
        Left = 5
        Top = 171
        Width = 75
        Height = 50
        Caption = 'Alterar'
        Enabled = False
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF000000000000000000FFFFFF00000000000000000000000000000000000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF000000000000000000FFFFFF00000000000000000000000000000000000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C6000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0000000000C6C6C60000000000FFFFFF0000000000C6C6C60000000000C6C6
          C600000000000000000000000000FF00FF00840000008400000000000000FFFF
          FF00FFFFFF0000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
          0000C6C6C600C6C6C600C6C6C600000000008400000084000000000000000000
          0000000000000000000000000000C6C6C60000000000C6C6C60000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000C6C6C60000000000C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600000000008400000084000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
          0000000000000000000000000000FF00FF008400000084000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = spAlterarClick
      end
      object spRelatorio: TSpeedButton
        Left = 5
        Top = 398
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
      object spConsultar: TSpeedButton
        Left = 4
        Top = 346
        Width = 75
        Height = 50
        Hint = 'Cancel'
        Caption = 'Con&sultar'
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333333777F3333333333330003333333333333777F3333333333330F0333
          33333333337F7F3333333333330F033333333333337373F33333333330F7F033
          333333333737F73F333333330FF7FF03333333337F37F37F333333330FF7FF03
          333333337F37337F333333330FFFFF033333333373F333733333333330FFF033
          33333333373FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        OnClick = spConsultarClick
      end
      object spCarne: TSpeedButton
        Left = 4
        Top = 267
        Width = 75
        Height = 50
        Caption = 'Carn&e'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF000000000000000000FFFFFF00000000000000000000000000000000000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF000000000000000000FFFFFF00000000000000000000000000000000000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
          FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C6000000
          0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
          FF0000000000C6C6C60000000000FFFFFF0000000000C6C6C60000000000C6C6
          C600000000000000000000000000FF00FF00840000008400000000000000FFFF
          FF00FFFFFF0000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
          0000C6C6C600C6C6C600C6C6C600000000008400000084000000000000000000
          0000000000000000000000000000C6C6C60000000000C6C6C60000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000C6C6C60000000000C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600000000008400000084000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
          0000000000000000000000000000FF00FF008400000084000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = spCarneClick
      end
      object spFechar: TSpeedButton
        Left = 6
        Top = 573
        Width = 75
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
        OnClick = spFecharClick
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 31
      Width = 839
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
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 839
      Height = 30
      Align = alTop
      Caption = 'CADASTRO DE MATR'#205'CULA'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 37
      Width = 752
      Height = 628
      ActivePage = tbMatricula
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object tbMatricula: TTabSheet
        Caption = 'Matr'#237'cula'
        object Bevel1: TBevel
          Left = 4
          Top = 9
          Width = 592
          Height = 199
        end
        object Label1: TLabel
          Left = 14
          Top = 23
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
        object Label2: TLabel
          Left = 122
          Top = 23
          Width = 32
          Height = 14
          Caption = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel8: TBevel
          Left = 122
          Top = 40
          Width = 349
          Height = 22
        end
        object lblNome: TLabel
          Left = 127
          Top = 44
          Width = 3
          Height = 15
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 478
          Top = 23
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
        object Label21: TLabel
          Left = 14
          Top = 87
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
        object Label23: TLabel
          Left = 14
          Top = 151
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
          Left = 130
          Top = 150
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
        object Label4: TLabel
          Left = 286
          Top = 152
          Width = 76
          Height = 14
          Caption = 'Data Matr'#237'cula'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 8
          Top = 532
          Width = 212
          Height = 15
          Caption = 'Click aqui para inserir "Disciplina(s)":'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object spInserirDisciplinas: TSpeedButton
          Left = 228
          Top = 526
          Width = 201
          Height = 42
          Caption = 'Incluir Disciplina na Grade'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            333333777777777F33333330B00000003333337F7777777F3333333000000000
            333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
            333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
            03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
            03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
            3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
            333333333377F7F33333333333330F03333333333337F7F33333333333330B03
            3333333333373733333333333333303333333333333373333333}
          NumGlyphs = 2
          ParentFont = False
          OnClick = spInserirDisciplinasClick
        end
        object Label12: TLabel
          Left = 286
          Top = 87
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
        object spExcluirDisciplina: TSpeedButton
          Left = 436
          Top = 526
          Width = 201
          Height = 42
          Caption = 'Excluir Disciplina'
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
          NumGlyphs = 2
          ParentFont = False
          OnClick = spExcluirDisciplinaClick
        end
        object edMatricula: TEdit
          Left = 14
          Top = 40
          Width = 99
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
          TabOrder = 0
          OnKeyPress = edMatriculaKeyPress
        end
        object cbAno: TComboBox
          Left = 478
          Top = 40
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
          TabOrder = 1
          Text = '2012'
          OnKeyPress = cbNivelKeyPress
          Items.Strings = (
            ''
            '2008'
            '2009'
            '2010'
            '2011'
            '2012')
        end
        object cbNivel: TComboBox
          Left = 14
          Top = 107
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
          OnEnter = cbNivelEnter
          OnKeyPress = cbNivelKeyPress
        end
        object cbTurma: TComboBox
          Left = 14
          Top = 171
          Width = 112
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
          OnKeyPress = cbNivelKeyPress
        end
        object cbstatus: TComboBox
          Left = 130
          Top = 171
          Width = 148
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
          OnKeyPress = cbNivelKeyPress
          Items.Strings = (
            ''
            'ABANDONOU'
            'CONCLUIU'
            'CANCELADO'
            'NORMAL'
            'TRANSFERIDO')
        end
        object dtMatricula: TDateTimePicker
          Left = 286
          Top = 170
          Width = 305
          Height = 24
          Date = 38755.000000000000000000
          Time = 38755.000000000000000000
          DateFormat = dfLong
          TabOrder = 6
          OnKeyPress = cbNivelKeyPress
        end
        object rdgImprimir: TRadioGroup
          Left = 597
          Top = 3
          Width = 148
          Height = 206
          Caption = 'Imprimir'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Boletim - Supletivo'
            'Boletim - Ens. Regular'
            'Carn'#234
            'Matr'#237'cula'
            'I.R.'
            'Declara'#231#227'o')
          ParentFont = False
          TabOrder = 7
        end
        object Panel5: TPanel
          Left = 2
          Top = 501
          Width = 741
          Height = 25
          Caption = 'Matricular Aluno(s) na Disciplina'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object cbSerie: TComboBox
          Left = 286
          Top = 107
          Width = 305
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
          OnEnter = cbSerieEnter
          OnKeyPress = cbNivelKeyPress
        end
        object edParametro: TEdit
          Left = 6
          Top = 570
          Width = 731
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
          TabOrder = 9
          OnKeyPress = edMatriculaKeyPress
        end
        object PageControl2: TPageControl
          Left = 2
          Top = 236
          Width = 741
          Height = 265
          ActivePage = TabSheet3
          TabOrder = 10
          object TabSheet3: TTabSheet
            Caption = 'Ensino Regular'
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 733
              Height = 235
              Align = alClient
              DataSource = DsDisciplinas
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              Columns = <
                item
                  Color = 11206655
                  Expanded = False
                  FieldName = 'Disciplina'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ReadOnly = True
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -12
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 270
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Unid1'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Not 1'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 35
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Unid2'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Not 2'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 35
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Unid3'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Not 3'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 35
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Unid4'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Alignment = taCenter
                  Title.Caption = 'Not 4'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 35
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Unid5'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Caption = 'Not 5'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 35
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Unid6'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Arial'
                  Font.Style = []
                  Title.Caption = 'Not 6'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 35
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Media'
                  Title.Alignment = taCenter
                  Title.Caption = 'M'#233'dia'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 40
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'RF'
                  Title.Alignment = taCenter
                  Title.Caption = 'R. F.'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 35
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'MediaFinal'
                  Title.Alignment = taCenter
                  Title.Caption = 'M. Final'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 50
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'F1'
                  Title.Alignment = taCenter
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 40
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'F2'
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
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Sit'
                  Title.Alignment = taCenter
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 44
                  Visible = True
                end>
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Ensino Supletivo'
            ImageIndex = 1
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 733
              Height = 235
              Align = alClient
              DataSource = DsDisciplinas
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = []
              Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
              ParentFont = False
              TabOrder = 0
              TitleFont.Charset = ANSI_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -12
              TitleFont.Name = 'Arial'
              TitleFont.Style = []
              OnDrawColumnCell = DBGrid3DrawColumnCell
              OnKeyPress = DBGrid3KeyPress
              Columns = <
                item
                  Color = 8454143
                  Expanded = False
                  FieldName = 'Disciplina'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -12
                  Font.Name = 'Arial'
                  Font.Style = [fsBold]
                  ReadOnly = True
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 291
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Unid1'
                  Title.Alignment = taCenter
                  Title.Caption = 'Unid 1'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 40
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Unid2'
                  Title.Alignment = taCenter
                  Title.Caption = 'Unid 2'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 40
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Unid3'
                  Title.Alignment = taCenter
                  Title.Caption = 'Unid 3'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 40
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Unid4'
                  Title.Alignment = taCenter
                  Title.Caption = 'Unid 4'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 40
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Media'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'M'#233'dia'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 40
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'PF'
                  Title.Alignment = taCenter
                  Title.Caption = 'Prova Final'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'MedGlobal'
                  Title.Alignment = taCenter
                  Title.Caption = 'M'#233'dia Global'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 78
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'RF'
                  Title.Alignment = taCenter
                  Title.Caption = 'Rec Final'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'MedFinal'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Caption = 'Med Final'
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 63
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'F1'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 40
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'F2'
                  ReadOnly = True
                  Title.Alignment = taCenter
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 44
                  Visible = True
                end
                item
                  Alignment = taCenter
                  Expanded = False
                  FieldName = 'Sit'
                  Title.Alignment = taCenter
                  Title.Font.Charset = ANSI_CHARSET
                  Title.Font.Color = clWindowText
                  Title.Font.Height = -11
                  Title.Font.Name = 'Arial'
                  Title.Font.Style = [fsBold]
                  Width = 44
                  Visible = True
                end>
            end
          end
        end
        object Panel6: TPanel
          Left = 3
          Top = 211
          Width = 741
          Height = 25
          Caption = 'RELA'#199#195'O DE DISCIPLINAS'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Notas'
        ImageIndex = 1
        object Label7: TLabel
          Left = 4
          Top = 15
          Width = 41
          Height = 16
          Caption = 'Nome:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBText1: TDBText
          Left = 9
          Top = 42
          Width = 704
          Height = 17
          DataField = 'Aluno'
          DataSource = DsDisciplinas
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 4
          Top = 105
          Width = 142
          Height = 16
          Caption = 'Lan'#231'amento de Notas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel2: TBevel
          Left = 4
          Top = 35
          Width = 737
          Height = 33
        end
      end
      object TabSheet1: TTabSheet
        Caption = 'Carn'#234
        ImageIndex = 2
        object SpeedButton1: TSpeedButton
          Left = 4
          Top = 443
          Width = 141
          Height = 70
          Caption = 'Consulta Carne'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF000000000000000000FFFFFF00000000000000000000000000000000000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF000000000000000000FFFFFF00000000000000000000000000000000000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C6000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000C6C6C60000000000FFFFFF0000000000C6C6C60000000000C6C6
            C600000000000000000000000000FF00FF00840000008400000000000000FFFF
            FF00FFFFFF0000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
            0000C6C6C600C6C6C600C6C6C600000000008400000084000000000000000000
            0000000000000000000000000000C6C6C60000000000C6C6C60000000000C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000C6C6C60000000000C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600000000008400000084000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
            0000000000000000000000000000FF00FF008400000084000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Layout = blGlyphTop
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 172
          Top = 443
          Width = 141
          Height = 70
          Caption = 'Excluir Carn'#234
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF000000000000000000FFFFFF00000000000000000000000000000000000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF000000000000000000FFFFFF00000000000000000000000000000000000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
            FF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000C6C6C6000000
            0000FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
            FF0000000000C6C6C60000000000FFFFFF0000000000C6C6C60000000000C6C6
            C600000000000000000000000000FF00FF00840000008400000000000000FFFF
            FF00FFFFFF0000000000C6C6C60000000000C6C6C60000000000C6C6C6000000
            0000C6C6C600C6C6C600C6C6C600000000008400000084000000000000000000
            0000000000000000000000000000C6C6C60000000000C6C6C60000000000C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF0000000000C6C6C60000000000C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600C6C6C6008400000084000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000C6C6C600C6C6C600C6C6
            C600C6C6C600C6C6C600C6C6C600000000008400000084000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
            0000000000000000000000000000FF00FF008400000084000000FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Layout = blGlyphTop
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object dbGridCarneAberta: TDBGrid
          Left = 1
          Top = 19
          Width = 728
          Height = 406
          DataSource = DsCarne
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Parcela'
              Title.Alignment = taCenter
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 48
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
              Width = 47
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_venc'
              Title.Alignment = taCenter
              Title.Caption = 'Data Vencimento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 104
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_pagto'
              Title.Alignment = taCenter
              Title.Caption = 'Data Pagamento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 100
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 11599871
              Expanded = False
              FieldName = 'Dias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Multa'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Width = 68
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Title.Alignment = taCenter
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 108
              Visible = True
            end
            item
              Color = clSilver
              Expanded = False
              FieldName = 'Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Valor + Multa'
              Width = 96
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Situacao'
              Title.Alignment = taCenter
              Title.Caption = 'Situa'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 80
              Visible = True
            end>
        end
      end
    end
  end
  object DsDisciplinas: TDataSource
    DataSet = QyDisciplinas
    Left = 648
    Top = 33
  end
  object QyDisciplinas: TQuery
    CachedUpdates = True
    AfterPost = QyDisciplinasAfterPost
    AfterCancel = QyDisciplinasAfterCancel
    AfterDelete = QyDisciplinasAfterDelete
    OnCalcFields = QyDisciplinasCalcFields
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * From Vw_Matricula_Disciplinas')
    UpdateObject = upDisciplinas
    Left = 616
    Top = 32
    object QyDisciplinasMatricula: TIntegerField
      FieldName = 'Matricula'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Matricula'
    end
    object QyDisciplinasCodDisciplina: TIntegerField
      FieldName = 'CodDisciplina'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.CodDisciplina'
    end
    object QyDisciplinasAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Ano'
    end
    object QyDisciplinasTurma: TStringField
      FieldName = 'Turma'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Turma'
      FixedChar = True
      Size = 1
    end
    object QyDisciplinasDisciplina: TStringField
      FieldName = 'Disciplina'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Disciplina'
      Size = 30
    end
    object QyDisciplinasAluno: TStringField
      FieldName = 'Aluno'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Aluno'
      Size = 80
    end
    object QyDisciplinasMD1S: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MD1S'
      Calculated = True
    end
    object QyDisciplinasMD2S: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MD2S'
      Calculated = True
    end
    object QyDisciplinasUnid1: TStringField
      FieldName = 'Unid1'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Unid1'
      FixedChar = True
      Size = 4
    end
    object QyDisciplinasUnid2: TStringField
      FieldName = 'Unid2'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Unid2'
      FixedChar = True
      Size = 4
    end
    object QyDisciplinasF1: TIntegerField
      FieldName = 'F1'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.F1'
    end
    object QyDisciplinasF2: TIntegerField
      FieldName = 'F2'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.F2'
    end
    object QyDisciplinasF3: TIntegerField
      FieldName = 'F3'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.F3'
    end
    object QyDisciplinasSit: TStringField
      FieldName = 'Sit'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Sit'
      FixedChar = True
      Size = 4
    end
    object QyDisciplinasCargaHoraria: TFloatField
      FieldName = 'CargaHoraria'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.CargaHoraria'
    end
    object QyDisciplinasCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.CodSerie'
    end
    object QyDisciplinasSerie: TStringField
      FieldName = 'Serie'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.Serie'
      Size = 50
    end
    object QyDisciplinasNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.Nivel'
      Size = 50
    end
    object QyDisciplinasUnid3: TStringField
      FieldName = 'Unid3'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.Unid3'
      FixedChar = True
      Size = 4
    end
    object QyDisciplinasUnid4: TStringField
      FieldName = 'Unid4'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.Unid4'
      FixedChar = True
      Size = 4
    end
    object QyDisciplinasPF: TStringField
      FieldName = 'PF'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.PF'
      FixedChar = True
      Size = 4
    end
    object QyDisciplinasRF: TStringField
      FieldName = 'RF'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.RF'
      FixedChar = True
      Size = 4
    end
    object QyDisciplinasMedia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Media'
      Calculated = True
    end
    object QyDisciplinasMedFinal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MedFinal'
      Calculated = True
    end
    object QyDisciplinasMedGlobal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MedGlobal'
      Calculated = True
    end
  end
  object QyCarne: TQuery
    OnCalcFields = QyCarneCalcFields
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * From Tb_Carne')
    Left = 296
    Top = 72
    object QyCarneMatricula: TIntegerField
      FieldName = 'Matricula'
      Origin = 'BDACADEMICO.Tb_Carne.Matricula'
    end
    object QyCarneParcela: TIntegerField
      FieldName = 'Parcela'
      Origin = 'BDACADEMICO.Tb_Carne.Parcela'
    end
    object QyCarneAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDACADEMICO.Tb_Carne.Ano'
    end
    object QyCarneDt_venc: TDateTimeField
      FieldName = 'Dt_venc'
      Origin = 'BDACADEMICO.Tb_Carne.Dt_venc'
    end
    object QyCarneDt_pagto: TDateTimeField
      FieldName = 'Dt_pagto'
      Origin = 'BDACADEMICO.Tb_Carne.Dt_pagto'
    end
    object QyCarneValor: TFloatField
      FieldName = 'Valor'
      Origin = 'BDACADEMICO.Tb_Carne.Valor'
      DisplayFormat = 'R$ 0.#0'
    end
    object QyCarneSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'BDACADEMICO.Tb_Carne.Situacao'
      FixedChar = True
      Size = 10
    end
    object QyCarneCodForma: TIntegerField
      FieldName = 'CodForma'
      Origin = 'BDACADEMICO.Tb_Carne.CodForma'
    end
    object QyCarneCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Tb_Carne.CodSerie'
    end
    object QyCarneDias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Dias'
      Calculated = True
    end
    object QyCarneMulta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Multa'
      DisplayFormat = 'R$ 0.#0'
      Calculated = True
    end
    object QyCarneTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object DsCarne: TDataSource
    DataSet = QyCarne
    Left = 328
    Top = 73
  end
  object QyCarneAbertas: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * From Tb_Carne')
    Left = 616
    Top = 360
    object IntegerField1: TIntegerField
      FieldName = 'Matricula'
      Origin = 'BDACADEMICO.Tb_Carne.Matricula'
    end
    object IntegerField3: TIntegerField
      FieldName = 'Parcela'
      Origin = 'BDACADEMICO.Tb_Carne.Parcela'
    end
    object IntegerField4: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDACADEMICO.Tb_Carne.Ano'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'Dt_venc'
      Origin = 'BDACADEMICO.Tb_Carne.Dt_venc'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'Dt_pagto'
      Origin = 'BDACADEMICO.Tb_Carne.Dt_pagto'
    end
    object FloatField1: TFloatField
      FieldName = 'Valor'
      Origin = 'BDACADEMICO.Tb_Carne.Valor'
    end
    object StringField2: TStringField
      FieldName = 'Situacao'
      Origin = 'BDACADEMICO.Tb_Carne.Situacao'
      FixedChar = True
      Size = 10
    end
    object QyCarneAbertasCodCurso: TIntegerField
      FieldName = 'CodCurso'
      Origin = 'BDACADEMICO.Tb_Carne.CodCurso'
    end
    object QyCarneAbertasSemestre: TIntegerField
      FieldName = 'Semestre'
      Origin = 'BDACADEMICO.Tb_Carne.Semestre'
    end
    object QyCarneAbertasPeriodo: TIntegerField
      FieldName = 'Periodo'
      Origin = 'BDACADEMICO.Tb_Carne.Periodo'
    end
    object QyCarneAbertasCodForma: TIntegerField
      FieldName = 'CodForma'
      Origin = 'BDACADEMICO.Tb_Carne.CodForma'
    end
  end
  object DsCarneAbertas: TDataSource
    DataSet = QyCarneAbertas
    Left = 648
    Top = 361
  end
  object Tb_Config: TTable
    DatabaseName = 'BDESisceb'
    TableName = 'dbo.Tb_Config'
    Left = 704
    Top = 277
    object Tb_ConfigRazao: TStringField
      FieldName = 'Razao'
      Size = 100
    end
    object Tb_ConfigCNPJ: TStringField
      FieldName = 'CNPJ'
      FixedChar = True
      Size = 16
    end
    object Tb_ConfigEndereco: TStringField
      FieldName = 'Endereco'
      Size = 80
    end
    object Tb_ConfigTel: TStringField
      FieldName = 'Tel'
      FixedChar = True
      Size = 12
    end
    object Tb_ConfigFax: TStringField
      FieldName = 'Fax'
      FixedChar = True
      Size = 12
    end
    object Tb_ConfigAno: TIntegerField
      FieldName = 'Ano'
    end
    object Tb_ConfigDigito: TIntegerField
      FieldName = 'Digito'
    end
    object Tb_ConfigMedia: TFloatField
      FieldName = 'Media'
    end
  end
  object upDisciplinas: TUpdateSQL
    ModifySQL.Strings = (
      'update Tb_Matricula_Disciplinas'
      'set'
      '  Matricula = :Matricula,'
      '  CodDisciplina = :CodDisciplina,'
      '  Ano = :Ano,'
      '  Unid1 = :Unid1,'
      '  Unid2 = :Unid2,'
      '  F1 = :F1,'
      '  F2 = :F2,'
      '  F3 = :F3,'
      '  Sit = :Sit,'
      '  CodSerie = :CodSerie,'
      '  Unid3 = :Unid3,'
      '  Unid4 = :Unid4,'
      '  PF = :PF,'
      '  RF = :RF'
      'where'
      '  Matricula = :OLD_Matricula and'
      '  CodDisciplina = :OLD_CodDisciplina and'
      '  Ano = :OLD_Ano and'
      '  CodSerie = :OLD_CodSerie')
    InsertSQL.Strings = (
      'insert into Tb_Matricula_Disciplinas'
      '  (Matricula, CodDisciplina, Ano, Turma, Unid1, Unid2, '
      '   F1, F2, F3, Sit, CodSerie, Unid3, Unid4, '
      '   PF, RF)'
      'values'
      '  (:Matricula, :CodDisciplina, :Ano, :Turma, :Unid1, '
      
        '   :Unid2, :F1, :F2, :F3, :Sit, :CodSerie, :Unid3, :Unid4, :PF, ' +
        ':RF)')
    DeleteSQL.Strings = (
      'delete from Tb_Matricula_Disciplinas'
      'where'
      '  Matricula = :OLD_Matricula and'
      '  CodDisciplina = :OLD_CodDisciplina and'
      '  Ano = :OLD_Ano and'
      '  CodSerie = :OLD_CodSerie')
    Left = 653
    Top = 71
  end
  object ActionList1: TActionList
    Left = 693
    Top = 183
    object Print: TAction
      Caption = 'Impressao'
      ShortCut = 16464
      OnExecute = spRelatorioClick
    end
    object Hab: TAction
      Caption = 'Habilitar'
      ShortCut = 16456
      OnExecute = HabExecute
    end
    object Mat: TAction
      Caption = 'Matricular'
      ShortCut = 112
      OnExecute = spNovoClick
    end
    object Reg: TAction
      Caption = 'Registrar'
      ShortCut = 113
      OnExecute = spSalvarClick
    end
    object Car: TAction
      Caption = 'Carne'
      ShortCut = 123
      OnExecute = spCarneClick
    end
  end
end
