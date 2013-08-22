object frmTurmas: TfrmTurmas
  Left = 239
  Top = 107
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 666
  ClientWidth = 886
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
    Width = 886
    Height = 666
    Align = alClient
    TabOrder = 0
    object Label21: TLabel
      Left = 23
      Top = 119
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
    object Label1: TLabel
      Left = 23
      Top = 191
      Width = 124
      Height = 14
      Caption = 'Rela'#231#227'o de Disciplinas:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 221
      Top = 119
      Width = 36
      Height = 14
      Caption = 'Turno:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 23
      Top = 56
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
    object Label3: TLabel
      Left = 453
      Top = 119
      Width = 66
      Height = 14
      Caption = 'Capacidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 589
      Top = 119
      Width = 71
      Height = 14
      Caption = 'Valor Turma:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 884
      Height = 30
      Align = alTop
      Caption = 'CADASTRO TURMAS'
      Color = clGreen
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object Panel3: TPanel
      Left = 1
      Top = 31
      Width = 884
      Height = 6
      Align = alTop
      Color = clRed
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
    end
    object Panel2: TPanel
      Left = 798
      Top = 37
      Width = 87
      Height = 628
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 7
      object spNovo: TSpeedButton
        Left = 7
        Top = 9
        Width = 75
        Height = 50
        Action = DataSetInsert1
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
      end
      object spExcluir: TSpeedButton
        Left = 7
        Top = 62
        Width = 75
        Height = 50
        Action = DataSetDelete1
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
      end
      object spSalvar: TSpeedButton
        Left = 7
        Top = 116
        Width = 75
        Height = 50
        Action = DataSetPost1
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
      end
      object spAlterar: TSpeedButton
        Left = 7
        Top = 171
        Width = 75
        Height = 50
        Action = DataSetEdit1
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
      object spFechar: TSpeedButton
        Left = 6
        Top = 395
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
      object spConsultar: TSpeedButton
        Left = 6
        Top = 226
        Width = 75
        Height = 50
        Action = DataSetCancel1
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
      end
    end
    object DBGrid1: TDBGrid
      Left = 23
      Top = 208
      Width = 749
      Height = 388
      DataSource = DsTurmas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Color = 10944511
          Expanded = False
          FieldName = 'Serie'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 249
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nivel'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 261
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Turma'
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
          FieldName = 'Turno'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 84
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Capacidade'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end>
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 23
      Top = 76
      Width = 749
      Height = 23
      DataField = 'CodSerie'
      DataSource = DsTurmas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      KeyField = 'CodSerie'
      ListField = 'Serie;Nivel;CodSerie'
      ListSource = DsSerie
      ParentFont = False
      TabOrder = 0
    end
    object DBComboBox1: TDBComboBox
      Left = 23
      Top = 140
      Width = 194
      Height = 23
      DataField = 'Turma'
      DataSource = DsTurmas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      Items.Strings = (
        ''
        'A'
        'B'
        'C'
        'D'
        'E'
        'F'
        'G'
        'H')
      ParentFont = False
      TabOrder = 1
    end
    object DBComboBox2: TDBComboBox
      Left = 221
      Top = 140
      Width = 227
      Height = 23
      DataField = 'Turno'
      DataSource = DsTurmas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      Items.Strings = (
        ''
        'Manha'
        'Tarde'
        'Noite')
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit1: TDBEdit
      Left = 453
      Top = 140
      Width = 132
      Height = 23
      DataField = 'Capacidade'
      DataSource = DsTurmas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBNavigator1: TDBNavigator
      Left = 24
      Top = 600
      Width = 748
      Height = 35
      DataSource = DsTurmas
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 9
    end
    object DBEdit2: TDBEdit
      Left = 589
      Top = 140
      Width = 180
      Height = 23
      DataField = 'Valor'
      DataSource = DsTurmas
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object DsTurmas: TDataSource
    DataSet = QyTurmas
    Left = 488
  end
  object QyTurmas: TQuery
    CachedUpdates = True
    AfterPost = QyTurmasAfterPost
    AfterCancel = QyTurmasAfterCancel
    AfterDelete = QyTurmasAfterDelete
    OnNewRecord = QyTurmasNewRecord
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * from Vw_Turmas')
    UpdateObject = upTurmas
    Left = 520
    object QyTurmasTurma: TStringField
      FieldName = 'Turma'
      Origin = 'BDACADEMICO.Tb_Turmas.Turma'
      FixedChar = True
      Size = 1
    end
    object QyTurmasTurno: TStringField
      FieldName = 'Turno'
      Origin = 'BDACADEMICO.Tb_Turmas.Turno'
      FixedChar = True
      Size = 10
    end
    object QyTurmasCapacidade: TIntegerField
      FieldName = 'Capacidade'
      Origin = 'BDACADEMICO.Tb_Turmas.Capacidade'
    end
    object QyTurmasValor: TFloatField
      FieldName = 'Valor'
      Origin = 'BDACADEMICO.Vw_Turmas.Valor'
      DisplayFormat = '##.00'
    end
    object QyTurmasCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Vw_Turmas.CodSerie'
    end
    object QyTurmasSerie: TStringField
      FieldName = 'Serie'
      Origin = 'BDEXPOENTE.Vw_Turmas.Serie'
      Size = 50
    end
    object QyTurmasNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'BDEXPOENTE.Vw_Turmas.Nivel'
      Size = 50
    end
  end
  object ActionList1: TActionList
    Left = 585
    Top = 39
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancelar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = DsTurmas
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Excluir'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = DsTurmas
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Alterar'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = DsTurmas
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Novo'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = DsTurmas
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'S&alvar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DsTurmas
    end
  end
  object upTurmas: TUpdateSQL
    ModifySQL.Strings = (
      'update Vw_Turmas'
      'set'
      '  Turma = :Turma,'
      '  Turno = :Turno,'
      '  Capacidade = :Capacidade,'
      '  Valor = :Valor,'
      '  CodSerie = :CodSerie'
      'where'
      '  Turma = :OLD_Turma and'
      '  Turno = :OLD_Turno and'
      '  CodSerie = :OLD_CodSerie')
    InsertSQL.Strings = (
      'insert into Tb_Turmas'
      '  (Turma, Turno, Capacidade, Valor, CodSerie)'
      'values'
      '  (:Turma, :Turno, :Capacidade, :Valor, :CodSerie)')
    DeleteSQL.Strings = (
      'delete from Tb_Turmas'
      'where'
      '  Turma = :OLD_Turma and'
      '  Turno = :OLD_Turno and'
      '  CodSerie = :OLD_CodSerie')
    Left = 521
    Top = 39
  end
  object QySerie: TQuery
    AfterPost = QyTurmasAfterPost
    AfterCancel = QyTurmasAfterCancel
    AfterDelete = QyTurmasAfterDelete
    OnNewRecord = QyTurmasNewRecord
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * from Vw_Series'
      'order by CodSerie')
    Left = 592
    object QySerieCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Vw_Series.CodSerie'
    end
    object QySerieNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'BDEXPOENTE.Vw_Series.Nivel'
      Size = 50
    end
    object QySerieSerie: TStringField
      FieldName = 'Serie'
      Origin = 'BDEXPOENTE.Vw_Series.Serie'
      Size = 50
    end
    object QySerieCodNivel: TIntegerField
      FieldName = 'CodNivel'
      Origin = 'BDEXPOENTE.Vw_Series.CodNivel'
    end
  end
  object DsSerie: TDataSource
    DataSet = QySerie
    Left = 560
  end
end
