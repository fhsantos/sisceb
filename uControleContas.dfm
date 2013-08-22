object FrmControleContas: TFrmControleContas
  Left = 149
  Top = 41
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 693
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
  object Shape1: TShape
    Left = 0
    Top = 48
    Width = 841
    Height = 4
    Align = alTop
    Brush.Color = clRed
    Shape = stRoundRect
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 52
    Width = 841
    Height = 641
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'CADASTRO'
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 75
        Height = 16
        Caption = 'N'#186' da Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 8
        Top = 83
        Width = 89
        Height = 16
        Caption = 'Tipo da Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 5
        Top = 168
        Width = 163
        Height = 19
        Caption = 'Forma de Pagamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 200
        Top = 16
        Width = 123
        Height = 16
        Caption = 'Descri'#231#227'o da Conta'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 505
        Top = 83
        Width = 109
        Height = 16
        Caption = 'Data de Cadastro'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edCodConta: TEdit
        Left = 8
        Top = 41
        Width = 180
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnKeyPress = edCodContaKeyPress
      end
      object edDescricao: TEdit
        Left = 200
        Top = 41
        Width = 617
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyPress = edCodContaKeyPress
      end
      object cbTipoConta: TComboBox
        Left = 8
        Top = 109
        Width = 489
        Height = 24
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 16
        ParentFont = False
        TabOrder = 2
        OnEnter = cbTipoContaEnter
        OnKeyPress = edCodContaKeyPress
      end
      object dtCadastro: TDateTimePicker
        Left = 504
        Top = 109
        Width = 313
        Height = 24
        Date = 38897.439745902800000000
        Time = 38897.439745902800000000
        DateFormat = dfLong
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnKeyPress = edCodContaKeyPress
      end
      object Panel4: TPanel
        Left = 0
        Top = 223
        Width = 833
        Height = 309
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 4
        object Panel5: TPanel
          Left = 791
          Top = 0
          Width = 42
          Height = 309
          Align = alRight
          BevelOuter = bvNone
          TabOrder = 0
          object spnovo: TSpeedButton
            Left = 1
            Top = 0
            Width = 40
            Height = 35
            Action = DataSetInsert1
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
              333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
              0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
              07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
              0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
              33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
              B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
              3BB33773333773333773B333333B3333333B7333333733333337}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object spsalvar: TSpeedButton
            Left = 1
            Top = 43
            Width = 40
            Height = 35
            Action = DataSetPost1
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
              555555555555555555555555555555555555555555FF55555555555559055555
              55555555577FF5555555555599905555555555557777F5555555555599905555
              555555557777FF5555555559999905555555555777777F555555559999990555
              5555557777777FF5555557990599905555555777757777F55555790555599055
              55557775555777FF5555555555599905555555555557777F5555555555559905
              555555555555777FF5555555555559905555555555555777FF55555555555579
              05555555555555777FF5555555555557905555555555555777FF555555555555
              5990555555555555577755555555555555555555555555555555}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object spexcluir: TSpeedButton
            Left = 1
            Top = 87
            Width = 40
            Height = 35
            Action = DataSetDelete1
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
              3333333777777777F3333330F77777703333333733F3F3F73F33330FF0808077
              0333337F37F7F7F37F33330FF0807077033333733737F73F73F330FF77808707
              703337F37F37F37F37F330FF08807807703037F37F37F37F37F700FF08808707
              700377F37337F37F377330FF778078077033373F73F7F3733733330FF0808077
              0333337F37F7F7F37F33330FF08070770333337FF7F7F7FF7F33330000000000
              03333377777777777F33330F888777770333337FFFFFFFFF7F33330000000000
              033333777777777773333333307770333333333337FFF7F33333333330000033
              3333333337777733333333333333333333333333333333333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
          object spcancelar: TSpeedButton
            Left = 1
            Top = 132
            Width = 40
            Height = 35
            Action = DataSetCancel1
            Flat = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000130B0000130B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333FFFFF3333333333999993333333333F77777FFF333333999999999
              33333337777FF377FF3333993370739993333377FF373F377FF3399993000339
              993337777F777F3377F3393999707333993337F77737333337FF993399933333
              399377F3777FF333377F993339903333399377F33737FF33377F993333707333
              399377F333377FF3377F993333101933399377F333777FFF377F993333000993
              399377FF3377737FF7733993330009993933373FF3777377F7F3399933000399
              99333773FF777F777733339993707339933333773FF7FFF77333333999999999
              3333333777333777333333333999993333333333377777333333}
            Layout = blGlyphTop
            NumGlyphs = 2
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
          end
        end
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 791
          Height = 309
          Align = alClient
          DataSource = DsFormaPagtoContas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Forma'
              ReadOnly = True
              Title.Caption = 'Forma de Pagamento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 196
              Visible = True
            end
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
              Width = 46
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DtPagto'
              Title.Alignment = taCenter
              Title.Caption = 'Data Pagto.'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DtVenc'
              Title.Alignment = taCenter
              Title.Caption = 'Data Vencimento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Valor'
              Title.Alignment = taCenter
              Title.Caption = 'R$ Valor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Desconto'
              Title.Alignment = taCenter
              Title.Caption = 'R$ Desconto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 91
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Situacao'
              Title.Alignment = taCenter
              Title.Caption = 'Situa'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 107
              Visible = True
            end>
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 532
        Width = 833
        Height = 80
        Align = alBottom
        BevelOuter = bvLowered
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        object spInsert: TSpeedButton
          Left = 263
          Top = 21
          Width = 60
          Height = 40
          Hint = 'Insert'
          Caption = '&Novo'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0033333333B333
            333B33FF33337F3333F73BB3777BB7777BB3377FFFF77FFFF77333B000000000
            0B3333777777777777333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333337F33333337F333330FFFFFFFF07333337F33333337F333330FFFFFFFF
            07333FF7F33333337FFFBBB0FFFFFFFF0BB37777F3333333777F3BB0FFFFFFFF
            0BBB3777F3333FFF77773330FFFF000003333337F333777773333330FFFF0FF0
            33333337F3337F37F3333330FFFF0F0B33333337F3337F77FF333330FFFF003B
            B3333337FFFF77377FF333B000000333BB33337777777F3377FF3BB3333BB333
            3BB33773333773333773B333333B3333333B7333333733333337}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          OnClick = spInsertClick
        end
        object spEdit: TSpeedButton
          Left = 329
          Top = 21
          Width = 60
          Height = 40
          Hint = 'Edit'
          Caption = '&Alterar'
          Enabled = False
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500000000055
            555557777777775F55550FFFFFFFFF0555557F5555555F7FFF5F0FEEEEEE0000
            05007F555555777775770FFFFFF0BFBFB00E7F5F5557FFF557770F0EEEE000FB
            FB0E7F75FF57775555770FF00F0FBFBFBF0E7F57757FFFF555770FE0B00000FB
            FB0E7F575777775555770FFF0FBFBFBFBF0E7F5575FFFFFFF5770FEEE0000000
            FB0E7F555777777755770FFFFF0B00BFB0007F55557577FFF7770FEEEEE0B000
            05557F555557577775550FFFFFFF0B0555557FF5F5F57575F55500F0F0F0F0B0
            555577F7F7F7F7F75F5550707070700B055557F7F7F7F7757FF5507070707050
            9055575757575757775505050505055505557575757575557555}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          OnClick = spEditClick
        end
        object spPost: TSpeedButton
          Left = 396
          Top = 21
          Width = 60
          Height = 40
          Hint = 'Post'
          Caption = '&Salvar'
          Enabled = False
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
            7700333333337777777733333333008088003333333377F73377333333330088
            88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
            000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
            FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
            99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
            99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
            99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
            93337FFFF7737777733300000033333333337777773333333333}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          OnClick = spPostClick
        end
        object spDelete: TSpeedButton
          Left = 465
          Top = 21
          Width = 60
          Height = 40
          Hint = 'Delete'
          Caption = '&Excluir'
          Enabled = False
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
            3333333777777777F3333330F777777033333337F3F3F3F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            33333337F7F7F7F7F3333330F080707033333337F7F7F7F7F3333330F0808070
            333333F7F7F7F7F7F3F33030F080707030333737F7F7F7F7F7333300F0808070
            03333377F7F7F7F773333330F080707033333337F7F7F7F7F333333070707070
            33333337F7F7F7F7FF3333000000000003333377777777777F33330F88877777
            0333337FFFFFFFFF7F3333000000000003333377777777777333333330777033
            3333333337FFF7F3333333333000003333333333377777333333}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
        end
        object spCancel: TSpeedButton
          Left = 533
          Top = 21
          Width = 60
          Height = 40
          Hint = 'Cancel'
          Caption = '&Cancelar'
          Enabled = False
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
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
          OnClick = spCancelClick
        end
        object SpeedButton10: TSpeedButton
          Left = 745
          Top = 21
          Width = 82
          Height = 40
          Hint = 'Cancel'
          Caption = '&Localizar'
          Flat = True
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
            333333333337FF3333333333330003333333333333777F333333333333080333
            3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
            33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
            B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
            BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
            B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
            3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
            333333333337F33333333333333B333333333333333733333333}
          Layout = blGlyphTop
          NumGlyphs = 2
          ParentFont = False
          OnClick = SpeedButton10Click
        end
        object DBNavigator1: TDBNavigator
          Left = 4
          Top = 21
          Width = 240
          Height = 40
          DataSource = DsFormaPagtoContas
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Flat = True
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'CONTAS A PAGAR'
      ImageIndex = 1
      OnExit = TabSheet2Exit
      OnShow = TabSheet2Show
      object Label3: TLabel
        Left = 1
        Top = 80
        Width = 396
        Height = 19
        AutoSize = False
        Caption = 'Lista de contas em abertas do dia acima escolhido.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 2
        Top = 8
        Width = 17
        Height = 16
        Caption = 'De'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 402
        Top = 8
        Width = 9
        Height = 16
        Caption = 'A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 802
        Top = 31
        Width = 26
        Height = 23
        Caption = 'IR'
        OnClick = SpeedButton1Click
      end
      object spimprimir: TSpeedButton
        Left = 712
        Top = 62
        Width = 80
        Height = 45
        Hint = 'Cancel'
        Caption = '&Imprimir'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          0003377777777777777308888888888888807F33333333333337088888888888
          88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
          8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
          8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        OnClick = spimprimirClick
      end
      object Panel6: TPanel
        Left = 0
        Top = 153
        Width = 833
        Height = 459
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 833
          Height = 459
          Align = alClient
          DataSource = DsListaContas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Contas'
              ReadOnly = True
              Title.Caption = 'Descri'#231#227'o da Conta'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 230
              Visible = True
            end
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
              Width = 56
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DtVenc'
              Title.Alignment = taCenter
              Title.Caption = 'Data Vencimento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Valor'
              Title.Alignment = taCenter
              Title.Caption = 'R$ Valor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Desconto'
              Title.Alignment = taCenter
              Title.Caption = 'R$ Desconto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 91
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Situacao'
              Title.Alignment = taCenter
              Title.Caption = 'Situa'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 129
              Visible = True
            end>
        end
      end
      object DtInicio: TDateTimePicker
        Left = 2
        Top = 32
        Width = 393
        Height = 24
        Date = 38897.568439479200000000
        Time = 38897.568439479200000000
        DateFormat = dfLong
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DtFinal: TDateTimePicker
        Left = 402
        Top = 32
        Width = 393
        Height = 24
        Date = 38897.568439479200000000
        Time = 38897.568439479200000000
        DateFormat = dfLong
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'CONTAS PAGAS'
      ImageIndex = 2
      OnExit = TabSheet3Exit
      OnShow = TabSheet3Show
      object Label6: TLabel
        Left = 1
        Top = 80
        Width = 396
        Height = 19
        AutoSize = False
        Caption = 'Lista de contas pagas conforme data acima escolhida.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 2
        Top = 8
        Width = 17
        Height = 16
        Caption = 'De'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 402
        Top = 8
        Width = 9
        Height = 16
        Caption = 'A'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 802
        Top = 31
        Width = 26
        Height = 23
        Caption = 'IR'
        OnClick = SpeedButton2Click
      end
      object Panel1: TPanel
        Left = 0
        Top = 145
        Width = 833
        Height = 467
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 0
          Top = 0
          Width = 833
          Height = 467
          Align = alClient
          DataSource = DsListaContas
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'Contas'
              ReadOnly = True
              Title.Caption = 'Descri'#231#227'o da Conta'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 230
              Visible = True
            end
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
              Width = 56
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'DtPagto'
              Title.Alignment = taCenter
              Title.Caption = 'Data Pagamento'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 110
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Valor'
              Title.Alignment = taCenter
              Title.Caption = 'R$ Valor'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 95
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Desconto'
              Title.Alignment = taCenter
              Title.Caption = 'R$ Desconto'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 91
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Situacao'
              Title.Alignment = taCenter
              Title.Caption = 'Situa'#231#227'o'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 129
              Visible = True
            end>
        end
      end
      object DtInicial: TDateTimePicker
        Left = 2
        Top = 32
        Width = 393
        Height = 24
        Date = 38897.568439479200000000
        Time = 38897.568439479200000000
        DateFormat = dfLong
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object DtTermino: TDateTimePicker
        Left = 402
        Top = 32
        Width = 393
        Height = 24
        Date = 38897.568439479200000000
        Time = 38897.568439479200000000
        DateFormat = dfLong
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'CONTAS A RECEBER'
      ImageIndex = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 841
    Height = 48
    Align = alTop
    BevelOuter = bvLowered
    Caption = 'CONTROLE DE CONTAS'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object ActionList1: TActionList
    Left = 712
    Top = 216
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancelar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = DsFormaPagtoContas
    end
    object DataSetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Excluir'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = DsFormaPagtoContas
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Alterar'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = DsFormaPagtoContas
    end
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Novo'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = DsFormaPagtoContas
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = '&Salvar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = DsFormaPagtoContas
    end
  end
  object QyFormaPagtoContas: TQuery
    CachedUpdates = True
    AfterPost = QyFormaPagtoContasAfterPost
    AfterCancel = QyFormaPagtoContasAfterCancel
    AfterDelete = QyFormaPagtoContasAfterDelete
    OnNewRecord = QyFormaPagtoContasNewRecord
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * From Vw_FormaPagtoContas')
    UpdateObject = upFormaPagtoContas
    Left = 716
    Top = 322
    object QyFormaPagtoContasDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Descricao'
      Size = 50
    end
    object QyFormaPagtoContasCodigo: TIntegerField
      FieldName = 'Codigo'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Codigo'
    end
    object QyFormaPagtoContasCodConta: TIntegerField
      FieldName = 'CodConta'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.CodConta'
    end
    object QyFormaPagtoContasCodFormaPagto: TIntegerField
      FieldName = 'CodFormaPagto'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.CodFormaPagto'
    end
    object QyFormaPagtoContasParcela: TIntegerField
      FieldName = 'Parcela'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Parcela'
    end
    object QyFormaPagtoContasSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Situacao'
    end
    object QyFormaPagtoContasDtPagto: TDateTimeField
      FieldName = 'DtPagto'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.DtPagto'
    end
    object QyFormaPagtoContasDtVenc: TDateTimeField
      FieldName = 'DtVenc'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.DtVenc'
    end
    object QyFormaPagtoContasValor: TFloatField
      FieldName = 'Valor'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Valor'
      DisplayFormat = 'R$ ##.00'
    end
    object QyFormaPagtoContasDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Desconto'
      DisplayFormat = 'R$ ##.00'
    end
    object QyFormaPagtoContasForma: TStringField
      FieldName = 'Forma'
      Origin = 'BDACADEMICO.Vw_FormaPagtoContas.Forma'
      Size = 30
    end
  end
  object DsFormaPagtoContas: TDataSource
    DataSet = QyFormaPagtoContas
    Left = 716
    Top = 288
  end
  object upFormaPagtoContas: TUpdateSQL
    ModifySQL.Strings = (
      'update Tb_FormaPagto_Contas'
      'set'
      '  Codigo = :Codigo,'
      '  CodConta = :CodConta,'
      '  CodFormaPagto = :CodFormaPagto,'
      '  Parcela = :Parcela,'
      '  Situacao = :Situacao,'
      '  DtPagto = :DtPagto,'
      '  DtVenc = :DtVenc,'
      '  Valor = :Valor,'
      '  Desconto = :Desconto'
      'where'
      '  Codigo = :OLD_Codigo and'
      '  CodConta = :OLD_CodConta and'
      '  CodFormaPagto = :OLD_CodFormaPagto and'
      '  Parcela = :OLD_Parcela')
    InsertSQL.Strings = (
      'insert into Tb_FormaPagto_Contas'
      '  (Codigo, CodConta, CodFormaPagto, Parcela, Situacao, DtPagto, '
      '   DtVenc, Valor, Desconto)'
      'values'
      '  (:Codigo, :CodConta, :CodFormaPagto, :Parcela, :Situacao, '
      '   :DtPagto, :DtVenc, :Valor, :Desconto)')
    DeleteSQL.Strings = (
      'delete from Tb_FormaPagto_Contas'
      'where'
      '  Codigo = :OLD_Codigo and'
      '  CodConta = :OLD_CodConta and'
      '  CodFormaPagto = :OLD_CodFormaPagto and'
      '  Parcela = :OLD_Parcela')
    Left = 716
    Top = 352
  end
  object DsListaContas: TDataSource
    DataSet = QyListaContas
    Left = 772
    Top = 288
  end
  object QyListaContas: TQuery
    OnNewRecord = QyFormaPagtoContasNewRecord
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * From Vw_ListasContas')
    Left = 772
    Top = 322
    object StringField1: TStringField
      FieldName = 'Descricao'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Descricao'
      Size = 50
    end
    object IntegerField1: TIntegerField
      FieldName = 'Codigo'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Codigo'
    end
    object IntegerField2: TIntegerField
      FieldName = 'CodConta'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.CodConta'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CodFormaPagto'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.CodFormaPagto'
    end
    object IntegerField4: TIntegerField
      FieldName = 'Parcela'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Parcela'
    end
    object StringField2: TStringField
      FieldName = 'Situacao'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Situacao'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DtPagto'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.DtPagto'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DtVenc'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.DtVenc'
    end
    object FloatField1: TFloatField
      FieldName = 'Valor'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Valor'
      DisplayFormat = 'R$ ##.00'
    end
    object FloatField2: TFloatField
      FieldName = 'Desconto'
      Origin = 'BDPECAS.Vw_FormaPagtoContas.Desconto'
      DisplayFormat = 'R$ ##.00'
    end
    object QyListaContasFormaPagto: TStringField
      FieldName = 'FormaPagto'
      Origin = 'BDPECAS.Vw_ListasContas.FormaPagto'
      FixedChar = True
      Size = 30
    end
    object QyListaContasContas: TStringField
      FieldName = 'Contas'
      Origin = 'BDPECAS.Vw_ListasContas.Contas'
      Size = 50
    end
  end
end
