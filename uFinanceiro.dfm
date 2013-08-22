object frmFinanceiro: TfrmFinanceiro
  Left = 275
  Top = -5
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 683
  ClientWidth = 867
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
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 867
    Height = 30
    Align = alTop
    Caption = 'Controle Financeiro'
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
    Width = 867
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
    Width = 867
    Height = 647
    Align = alClient
    TabOrder = 2
    object Panel2: TPanel
      Left = 776
      Top = 1
      Width = 90
      Height = 645
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 0
      object spConsultar: TSpeedButton
        Left = 5
        Top = 9
        Width = 75
        Height = 50
        Hint = 'Insert'
        Caption = '&Consultar'
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
        OnClick = spConsultarClick
      end
      object spExtornar: TSpeedButton
        Left = 5
        Top = 62
        Width = 75
        Height = 50
        Hint = 'Delete'
        Caption = '&Extornar'
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
        OnClick = spExtornarClick
      end
      object spSalvar: TSpeedButton
        Left = 5
        Top = 116
        Width = 75
        Height = 50
        Hint = 'Post'
        Caption = '&Registrar'
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
        PopupMenu = PopSenha
        OnClick = spSalvarClick
      end
      object spAlterar: TSpeedButton
        Left = 5
        Top = 331
        Width = 75
        Height = 50
        Caption = 'Autenticar'
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
      end
      object spRelatorio: TSpeedButton
        Left = 5
        Top = 390
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
      object spFechar: TSpeedButton
        Left = 5
        Top = 509
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
    object Panel5: TPanel
      Left = 1
      Top = 1
      Width = 775
      Height = 645
      Align = alClient
      TabOrder = 1
      object Panel6: TPanel
        Left = 1
        Top = 204
        Width = 773
        Height = 440
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Panel7: TPanel
          Left = 0
          Top = 428
          Width = 773
          Height = 12
          Align = alBottom
          TabOrder = 0
        end
        object Panel8: TPanel
          Left = 763
          Top = 88
          Width = 10
          Height = 340
          Align = alRight
          TabOrder = 1
        end
        object Panel9: TPanel
          Left = 0
          Top = 88
          Width = 9
          Height = 340
          Align = alLeft
          TabOrder = 2
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 773
          Height = 88
          Align = alTop
          TabOrder = 3
          object pnhoras: TPanel
            Left = 1
            Top = 1
            Width = 771
            Height = 40
            Align = alTop
            BevelOuter = bvLowered
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -21
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object pnData: TPanel
            Left = 1
            Top = 41
            Width = 771
            Height = 40
            Align = alTop
            BevelOuter = bvLowered
            Color = clWhite
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -21
            Font.Name = 'Comic Sans MS'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
        end
        object DBGrid1: TDBGrid
          Left = 9
          Top = 88
          Width = 754
          Height = 340
          Align = alClient
          Anchors = [akLeft, akRight, akBottom]
          DataSource = DsFinanceiro
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          ParentFont = False
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Alignment = taCenter
              Color = clSilver
              Expanded = False
              FieldName = 'Parcela'
              Title.Alignment = taCenter
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 51
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
              Width = 43
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_venc'
              Title.Alignment = taCenter
              Title.Caption = 'Data vencimento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 96
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Dt_pagto'
              Title.Alignment = taCenter
              Title.Caption = 'Data pagamento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 96
              Visible = True
            end
            item
              Alignment = taCenter
              Color = 13565951
              Expanded = False
              FieldName = 'Dias'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
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
              FieldName = 'Multa'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Valor'
              Font.Charset = ANSI_CHARSET
              Font.Color = clRed
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Total'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlue
              Font.Height = -12
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              Title.Alignment = taCenter
              Title.Caption = 'Valor c/ Multa'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 101
              Visible = True
            end
            item
              Alignment = taCenter
              Color = clSilver
              Expanded = False
              FieldName = 'Situacao'
              Title.Alignment = taCenter
              Title.Caption = 'Situa'#231#227'o'
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
      object Panel11: TPanel
        Left = 1
        Top = 1
        Width = 773
        Height = 192
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          Left = 5
          Top = 30
          Width = 53
          Height = 15
          Caption = 'Matr'#237'cula'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 149
          Top = 30
          Width = 33
          Height = 15
          Caption = 'Nome'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 5
          Top = 118
          Width = 33
          Height = 15
          Caption = 'Serie:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 338
          Top = 118
          Width = 30
          Height = 15
          Caption = 'Nivel:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edMatricula: TEdit
          Left = 5
          Top = 54
          Width = 135
          Height = 30
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edNome: TEdit
          Left = 149
          Top = 54
          Width = 420
          Height = 30
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edSerie: TEdit
          Left = 5
          Top = 142
          Width = 329
          Height = 30
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object edNivel: TEdit
          Left = 338
          Top = 142
          Width = 231
          Height = 30
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object rdTipo: TRadioGroup
          Left = 576
          Top = 37
          Width = 198
          Height = 136
          Caption = 'Tipo Ficha'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ItemIndex = 0
          Items.Strings = (
            'Ficha Financeira por Turma'
            'Ficha Financeira Individual')
          ParentFont = False
          TabOrder = 4
        end
      end
    end
  end
  object DsFinanceiro: TDataSource
    DataSet = QyFinanceiro
    Left = 601
    Top = 37
  end
  object QyFinanceiro: TQuery
    OnCalcFields = QyFinanceiroCalcFields
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * from Tb_Carne')
    Left = 633
    Top = 37
    object QyFinanceiroMatricula: TIntegerField
      FieldName = 'Matricula'
      Origin = 'BDACADEMICO.Tb_Carne.Matricula'
    end
    object QyFinanceiroParcela: TIntegerField
      FieldName = 'Parcela'
      Origin = 'BDACADEMICO.Tb_Carne.Parcela'
    end
    object QyFinanceiroAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDACADEMICO.Tb_Carne.Ano'
    end
    object QyFinanceiroDt_venc: TDateTimeField
      FieldName = 'Dt_venc'
      Origin = 'BDACADEMICO.Tb_Carne.Dt_venc'
    end
    object QyFinanceiroDt_pagto: TDateTimeField
      FieldName = 'Dt_pagto'
      Origin = 'BDACADEMICO.Tb_Carne.Dt_pagto'
    end
    object QyFinanceiroValor: TFloatField
      FieldName = 'Valor'
      Origin = 'BDACADEMICO.Tb_Carne.Valor'
      DisplayFormat = 'R$ ##.00'
    end
    object QyFinanceiroSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'BDACADEMICO.Tb_Carne.Situacao'
      FixedChar = True
      Size = 10
    end
    object QyFinanceiroCodForma: TIntegerField
      FieldName = 'CodForma'
      Origin = 'BDACADEMICO.Tb_Carne.CodForma'
    end
    object QyFinanceiroCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Tb_Carne.CodSerie'
    end
    object QyFinanceiroDias: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Dias'
      Calculated = True
    end
    object QyFinanceiroMulta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Multa'
      DisplayFormat = 'R$ ##.00'
      Calculated = True
    end
    object QyFinanceiroTotal: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = 'R$ ##.00'
      Calculated = True
    end
  end
  object ActionList1: TActionList
    Left = 729
    Top = 109
    object Consultar: TAction
      Caption = 'Consultar'
      ShortCut = 16451
      OnExecute = spConsultarClick
    end
    object VisibleTrue: TAction
      Caption = 'VisibleTrue'
      ShortCut = 24699
      OnExecute = VisibleTrueExecute
    end
    object Habilitar: TAction
      Caption = 'Habilitar'
      ShortCut = 49225
      OnExecute = HabilitarExecute
    end
  end
  object sp_insert_Tb_MovimentoCaixa: TStoredProc
    DatabaseName = 'BDESisceb'
    StoredProcName = 'sp_insert_Tb_MovimentoCaixa;1'
    Left = 472
    Top = 48
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
  object sp_insert_Tb_Informacao: TStoredProc
    DatabaseName = 'BDESisceb'
    StoredProcName = 'sp_insert_Tb_Informacao;1'
    Left = 488
    Top = 304
  end
  object sp_update_Tb_Informacao: TStoredProc
    DatabaseName = 'BDESisceb'
    StoredProcName = 'sp_update_Tb_Informacao;1'
    Left = 488
    Top = 336
  end
  object sp_delete_Tb_Informacao: TStoredProc
    DatabaseName = 'BDESisceb'
    StoredProcName = 'sp_delete_Tb_Informacao;1'
    Left = 488
    Top = 368
  end
  object ActionList2: TActionList
    Left = 725
    Top = 47
    object Hab: TAction
      Caption = 'Habilitar'
      ShortCut = 24688
      OnExecute = HabExecute
    end
  end
  object PopSenha: TPopupMenu
    Left = 811
    Top = 237
    object Liberar1: TMenuItem
      Caption = 'Liberar'
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 106
    Top = 243
  end
end
