object frmMovCaixa: TfrmMovCaixa
  Left = 92
  Top = 73
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 666
    Align = alClient
    TabOrder = 0
    object Label21: TLabel
      Left = 107
      Top = 55
      Width = 57
      Height = 14
      Caption = 'Descri'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 7
      Top = 303
      Width = 4
      Height = 19
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 7
      Top = 55
      Width = 85
      Height = 14
      Caption = 'Cod. Descri'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 626
      Top = 55
      Width = 27
      Height = 14
      Caption = 'Tipo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 7
      Top = 119
      Width = 93
      Height = 14
      Caption = 'Cod. Movimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 107
      Top = 119
      Width = 68
      Height = 14
      Caption = 'Observa'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 626
      Top = 119
      Width = 49
      Height = 14
      Caption = 'Situa'#231#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 7
      Top = 179
      Width = 91
      Height = 14
      Caption = 'Data Pagamento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 7
      Top = 232
      Width = 740
      Height = 89
    end
    object Label8: TLabel
      Left = 626
      Top = 179
      Width = 32
      Height = 14
      Caption = 'Valor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 362
      Top = 251
      Width = 77
      Height = 19
      Caption = 'Data Incial:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 368
      Top = 291
      Width = 71
      Height = 19
      Caption = 'Data Final:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 839
      Height = 30
      Align = alTop
      Caption = 'CADASTRO DE CONTAS'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
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
      TabOrder = 9
    end
    object Panel2: TPanel
      Left = 753
      Top = 37
      Width = 87
      Height = 628
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 10
      object spNovo: TSpeedButton
        Left = 7
        Top = 9
        Width = 75
        Height = 50
        Hint = 'Insert'
        Caption = '&Novo'
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
        Left = 7
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
        Left = 7
        Top = 116
        Width = 75
        Height = 50
        Hint = 'Post'
        Caption = 'S&alvar'
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
        Left = 7
        Top = 171
        Width = 75
        Height = 50
        Hint = 'Edit'
        Caption = '&Alterar'
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
      object spCancelar: TSpeedButton
        Left = 6
        Top = 226
        Width = 75
        Height = 50
        Hint = 'Cancel'
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
      object spConsultar: TSpeedButton
        Left = 6
        Top = 450
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
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555777555
          5555555555000757755555575500005007555570058880000075570870088078
          007555787887087777755550880FF0800007708080888F7088077088F0708F78
          88077000F0778080005555508F0008800755557878FF88777075570870080088
          0755557075888070755555575500075555555555557775555555}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = spConsultarClick
      end
      object spRelatorio: TSpeedButton
        Left = 6
        Top = 397
        Width = 75
        Height = 50
        Hint = 'Ir para...'
        Caption = 'Relat'#243'rio'
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
    end
    object DBGrid1: TDBGrid
      Left = 7
      Top = 328
      Width = 741
      Height = 329
      DataSource = DsMaterial
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 11
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Color = clGreen
          Expanded = False
          FieldName = 'Conta'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 340
          Visible = True
        end
        item
          Color = 12910591
          Expanded = False
          FieldName = 'Obs'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Observa'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 254
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Valor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -13
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 97
          Visible = True
        end>
    end
    object edCodDescricao: TEdit
      Left = 7
      Top = 75
      Width = 95
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnKeyPress = edCodDescricaoKeyPress
    end
    object edConta: TEdit
      Left = 107
      Top = 75
      Width = 515
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      OnKeyPress = edCodDescricaoKeyPress
    end
    object edCodMov: TEdit
      Left = 7
      Top = 139
      Width = 95
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyPress = edCodDescricaoKeyPress
    end
    object edObs: TEdit
      Left = 107
      Top = 139
      Width = 515
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnKeyPress = edCodDescricaoKeyPress
    end
    object edTipo: TEdit
      Left = 626
      Top = 75
      Width = 123
      Height = 24
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      OnKeyPress = edCodDescricaoKeyPress
    end
    object cbSituacao: TComboBox
      Left = 626
      Top = 139
      Width = 123
      Height = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 5
      OnKeyPress = edCodDescricaoKeyPress
      Items.Strings = (
        'PAGO'
        'EM ABERTA')
    end
    object dtPagto: TDateTimePicker
      Left = 7
      Top = 198
      Width = 614
      Height = 24
      Date = 39695.000000000000000000
      Time = 39695.000000000000000000
      DateFormat = dfLong
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnKeyPress = edCodDescricaoKeyPress
    end
    object edValor: TEdit
      Left = 626
      Top = 195
      Width = 123
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnKeyPress = edCodDescricaoKeyPress
    end
    object dtFinal: TDateTimePicker
      Left = 444
      Top = 288
      Width = 300
      Height = 24
      Date = 39695.000000000000000000
      Time = 39695.000000000000000000
      DateFormat = dfLong
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
    end
    object dtInicio: TDateTimePicker
      Left = 444
      Top = 248
      Width = 300
      Height = 24
      Date = 39695.000000000000000000
      Time = 39695.000000000000000000
      DateFormat = dfLong
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
  end
  object DsMaterial: TDataSource
    DataSet = QyMaterial
    Left = 488
    Top = 32
  end
  object QyMaterial: TQuery
    CachedUpdates = True
    DatabaseName = 'BDSisceb'
    SQL.Strings = (
      'Select * from Vw_MovCaixa')
    Left = 520
    Top = 32
    object QyMaterialCodMov: TIntegerField
      FieldName = 'CodMov'
      Origin = 'BDSANCLAU.Vw_MovCaixa.CodMov'
    end
    object QyMaterialCodDescricao: TIntegerField
      FieldName = 'CodDescricao'
      Origin = 'BDSANCLAU.Vw_MovCaixa.CodDescricao'
    end
    object QyMaterialDtPagto: TDateTimeField
      FieldName = 'DtPagto'
      Origin = 'BDSANCLAU.Vw_MovCaixa.DtPagto'
    end
    object QyMaterialValor: TFloatField
      FieldName = 'Valor'
      Origin = 'BDSANCLAU.Vw_MovCaixa.Valor'
      DisplayFormat = 'R$ ##.00'
    end
    object QyMaterialObs: TStringField
      FieldName = 'Obs'
      Origin = 'BDSANCLAU.Vw_MovCaixa.Obs'
      Size = 100
    end
    object QyMaterialSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'BDSANCLAU.Vw_MovCaixa.Situacao'
      FixedChar = True
      Size = 15
    end
    object QyMaterialConta: TStringField
      FieldName = 'Conta'
      Origin = 'BDSANCLAU.Vw_MovCaixa.Conta'
      Size = 100
    end
    object QyMaterialTipo: TStringField
      FieldName = 'Tipo'
      Origin = 'BDSANCLAU.Vw_MovCaixa.Tipo'
      FixedChar = True
      Size = 1
    end
  end
  object sp_insert_Tb_MovimentoCaixa: TStoredProc
    DatabaseName = 'BDSisceb'
    StoredProcName = 'sp_insert_Tb_MovimentoCaixa;1'
    Left = 488
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@CodMov'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CodDescricao'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DtPagto'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@Valor'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Obs'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Status'
        ParamType = ptInput
      end>
  end
  object sp_update_Tb_MovimentoCaixa: TStoredProc
    DatabaseName = 'BDSisceb'
    StoredProcName = 'sp_update_Tb_MovimentoCaixa;1'
    Left = 488
    Top = 96
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@CodMov'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CodDescricao'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DtPagto'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = '@Valor'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Obs'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = '@Status'
        ParamType = ptInput
      end>
  end
  object sp_delete_Tb_MovimentoCaixa: TStoredProc
    DatabaseName = 'BDSisceb'
    StoredProcName = 'sp_delete_Tb_MovimentoCaixa;1'
    Left = 488
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'RETURN_VALUE'
        ParamType = ptResult
      end
      item
        DataType = ftInteger
        Name = '@CodMov'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = '@CodDescricao'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = '@DtPagto'
        ParamType = ptInput
      end>
  end
  object sp_insert_Tb_Informacao: TStoredProc
    DatabaseName = 'BDSisceb'
    StoredProcName = 'sp_insert_Tb_Informacao;1'
    Left = 488
    Top = 384
  end
  object sp_update_Tb_Informacao: TStoredProc
    DatabaseName = 'BDSisceb'
    StoredProcName = 'sp_update_Tb_Informacao;1'
    Left = 488
    Top = 416
  end
  object sp_delete_Tb_Informacao: TStoredProc
    DatabaseName = 'BDSisceb'
    StoredProcName = 'sp_delete_Tb_Informacao;1'
    Left = 488
    Top = 448
  end
end
