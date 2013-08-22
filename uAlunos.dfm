object frmAlunos: TfrmAlunos
  Left = 257
  Top = 124
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 664
  ClientWidth = 874
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 36
    Width = 874
    Height = 628
    Align = alClient
    TabOrder = 0
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 765
      Height = 626
      ActivePage = TabSheet1
      Align = alClient
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Dados do Aluno'
        object Label1: TLabel
          Left = 97
          Top = 5
          Width = 63
          Height = 16
          Caption = 'Matr'#237'cula:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 229
          Top = 5
          Width = 41
          Height = 16
          Caption = 'Aluno:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 6
          Top = 140
          Width = 64
          Height = 16
          Caption = 'Endere'#231'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 6
          Top = 190
          Width = 43
          Height = 16
          Caption = 'Bairro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 211
          Top = 190
          Width = 49
          Height = 16
          Caption = 'Cidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 467
          Top = 140
          Width = 93
          Height = 16
          Caption = 'Complemento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 96
          Top = 61
          Width = 131
          Height = 16
          Caption = 'Data de Nascimento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 341
          Top = 61
          Width = 113
          Height = 16
          Caption = 'Data de Cadastro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 587
          Top = 61
          Width = 37
          Height = 16
          Caption = 'Sexo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 467
          Top = 190
          Width = 30
          Height = 16
          Caption = 'CEP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 211
          Top = 237
          Width = 40
          Height = 16
          Caption = 'Email:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 618
          Top = 190
          Width = 46
          Height = 16
          Caption = 'Estado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 6
          Top = 237
          Width = 60
          Height = 16
          Caption = 'Telefone:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 107
          Top = 237
          Width = 50
          Height = 16
          Caption = 'Celular:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 624
          Top = 563
          Width = 37
          Height = 16
          Caption = 'Sexo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel1: TBevel
          Left = 3
          Top = 292
          Width = 745
          Height = 95
        end
        object Label3: TLabel
          Left = 7
          Top = 295
          Width = 25
          Height = 16
          Caption = 'Pai:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 386
          Top = 295
          Width = 31
          Height = 16
          Caption = 'M'#227'e:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 7
          Top = 341
          Width = 34
          Height = 16
          Caption = 'CPF.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 386
          Top = 341
          Width = 21
          Height = 16
          Caption = 'CI.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Bevel2: TBevel
          Left = 3
          Top = 132
          Width = 745
          Height = 155
        end
        object Bevel3: TBevel
          Left = 94
          Top = 3
          Width = 654
          Height = 114
        end
        object edMatricula: TEdit
          Left = 97
          Top = 29
          Width = 121
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = edMatriculaKeyPress
        end
        object edNome: TEdit
          Left = 229
          Top = 29
          Width = 516
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = edNomeKeyPress
        end
        object edEndereco: TEdit
          Left = 6
          Top = 161
          Width = 454
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyPress = edNomeKeyPress
        end
        object edBairro: TEdit
          Left = 6
          Top = 209
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnKeyPress = edNomeKeyPress
        end
        object edCidade: TEdit
          Left = 211
          Top = 209
          Width = 249
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnKeyPress = edNomeKeyPress
        end
        object edComplemento: TEdit
          Left = 467
          Top = 161
          Width = 275
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyPress = edNomeKeyPress
        end
        object dtNascimento: TDateTimePicker
          Left = 96
          Top = 85
          Width = 244
          Height = 23
          Date = 38753.000000000000000000
          Time = 38753.000000000000000000
          DateFormat = dfLong
          TabOrder = 2
          OnKeyPress = edNomeKeyPress
        end
        object dtCadastro: TDateTimePicker
          Left = 341
          Top = 85
          Width = 244
          Height = 23
          Date = 38753.000000000000000000
          Time = 38753.000000000000000000
          DateFormat = dfLong
          TabOrder = 3
          OnKeyPress = edNomeKeyPress
        end
        object cbSexo: TComboBox
          Left = 587
          Top = 85
          Width = 159
          Height = 23
          ItemHeight = 15
          TabOrder = 4
          OnKeyPress = edNomeKeyPress
          Items.Strings = (
            'Feminino'
            'Masculino')
        end
        object edCEP: TEdit
          Left = 467
          Top = 209
          Width = 146
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnKeyPress = edNomeKeyPress
        end
        object edEmail: TEdit
          Left = 211
          Top = 256
          Width = 530
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnKeyPress = edNomeKeyPress
        end
        object edEstado: TEdit
          Left = 618
          Top = 209
          Width = 124
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnKeyPress = edNomeKeyPress
        end
        object Panel3: TPanel
          Left = 0
          Top = 511
          Width = 757
          Height = 85
          Align = alBottom
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
          object Label27: TLabel
            Left = 2
            Top = 40
            Width = 253
            Height = 15
            Caption = 'Digite aqui abaixo os dados para consultar...:'
          end
          object edConsultar: TEdit
            Left = 2
            Top = 56
            Width = 311
            Height = 23
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnChange = edConsultarChange
            OnClick = edConsultarClick
          end
          object chekbox: TCheckBox
            Left = 2
            Top = 4
            Width = 169
            Height = 17
            Caption = 'Identidade Estudantil'
            Checked = True
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            State = cbChecked
            TabOrder = 1
          end
          object rdRelatorio: TRadioGroup
            Left = 320
            Top = 10
            Width = 433
            Height = 71
            Caption = 'Tipo Relat'#243'rio'
            Columns = 3
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ItemIndex = 1
            Items.Strings = (
              'Ficha Aluno'
              'Estudantil Frente'
              'Estudantil Verso'
              'Aniversariantes'
              'Disciplinas que Falta'
              'Consultar')
            ParentFont = False
            TabOrder = 2
            OnClick = rdRelatorioClick
          end
        end
        object edFone: TEdit
          Left = 6
          Top = 256
          Width = 97
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnKeyPress = edNomeKeyPress
        end
        object edCelular: TEdit
          Left = 107
          Top = 256
          Width = 97
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnKeyPress = edNomeKeyPress
        end
        object DBGrid1: TDBGrid
          Left = 3
          Top = 392
          Width = 766
          Height = 116
          DataSource = DsAlunos
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
          TabOrder = 19
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnCellClick = DBGrid1CellClick
          Columns = <
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'Matricula'
              Title.Alignment = taCenter
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Nome'
              Title.Font.Charset = ANSI_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -12
              Title.Font.Name = 'Arial'
              Title.Font.Style = [fsBold]
              Width = 545
              Visible = True
            end>
        end
        object Panel7: TPanel
          Left = 3
          Top = 18
          Width = 89
          Height = 89
          BevelInner = bvLowered
          BevelOuter = bvNone
          Color = clWindow
          TabOrder = 20
          object Image1: TImage
            Left = 1
            Top = 1
            Width = 87
            Height = 87
            Align = alClient
            Stretch = True
          end
        end
        object edPai: TEdit
          Left = 7
          Top = 313
          Width = 370
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
          OnKeyPress = edNomeKeyPress
        end
        object edMae: TEdit
          Left = 386
          Top = 313
          Width = 352
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
          OnKeyPress = edNomeKeyPress
        end
        object edCPF: TEdit
          Left = 7
          Top = 357
          Width = 370
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
          OnKeyPress = edNomeKeyPress
        end
        object edCI: TEdit
          Left = 386
          Top = 357
          Width = 352
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 17
          OnKeyPress = edNomeKeyPress
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Complemento'
        ImageIndex = 1
        object Label16: TLabel
          Left = 3
          Top = 75
          Width = 83
          Height = 16
          Caption = 'Observa'#231#227'o.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 3
          Top = 11
          Width = 66
          Height = 16
          Caption = 'Desconto.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 189
          Top = 11
          Width = 53
          Height = 16
          Caption = 'Bolsista:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 2
          Top = 339
          Width = 121
          Height = 16
          Caption = 'Nome respons'#225'vel:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 338
          Top = 339
          Width = 34
          Height = 16
          Caption = 'CPF.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 503
          Top = 339
          Width = 21
          Height = 16
          Caption = 'CI.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 2
          Top = 403
          Width = 36
          Height = 16
          Caption = 'Fone:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object MmObs: TMemo
          Left = 3
          Top = 96
          Width = 667
          Height = 145
          TabOrder = 2
        end
        object edDesconto: TEdit
          Left = 3
          Top = 32
          Width = 179
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyPress = edNomeKeyPress
        end
        object edBolsista: TEdit
          Left = 186
          Top = 32
          Width = 169
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyPress = edNomeKeyPress
        end
        object Panel6: TPanel
          Left = 0
          Top = 244
          Width = 681
          Height = 47
          Caption = 'Dados do Respons'#225'vel'
          Color = clGreen
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object edNomeResponsavel: TEdit
          Left = 2
          Top = 368
          Width = 330
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyPress = edNomeKeyPress
        end
        object edCpfResponsavel: TEdit
          Left = 338
          Top = 368
          Width = 159
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyPress = edNomeKeyPress
        end
        object edCiResponsavel: TEdit
          Left = 503
          Top = 368
          Width = 174
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyPress = edNomeKeyPress
        end
        object edFoneResponsavel: TEdit
          Left = 2
          Top = 424
          Width = 174
          Height = 23
          CharCase = ecUpperCase
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyPress = edNomeKeyPress
        end
      end
    end
    object Panel2: TPanel
      Left = 766
      Top = 1
      Width = 107
      Height = 626
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 1
      object spNovo: TSpeedButton
        Left = 15
        Top = 25
        Width = 80
        Height = 45
        Hint = 'Insert'
        Caption = '&Inserir F2'
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
        Left = 15
        Top = 74
        Width = 80
        Height = 45
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
        Left = 15
        Top = 124
        Width = 80
        Height = 45
        Hint = 'Post'
        Caption = 'Gravar F1'
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
        Left = 15
        Top = 173
        Width = 80
        Height = 45
        Caption = 'Alterar'
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
      object spCancelar: TSpeedButton
        Left = 15
        Top = 222
        Width = 80
        Height = 45
        Hint = 'Cancel'
        Caption = '&Cancelar'
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
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
          FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00FF000000
          000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
          0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FFFF
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
          0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FF00FF000000
          0000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0000000000000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00
          FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00FF000000
          000000000000FFFFFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000FFFFFF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        Layout = blGlyphTop
        ParentFont = False
        OnClick = spCancelarClick
      end
      object spRelatorio: TSpeedButton
        Left = 15
        Top = 377
        Width = 80
        Height = 45
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
      object SpeedButton2: TSpeedButton
        Left = 15
        Top = 331
        Width = 80
        Height = 45
        Hint = 'Cancel'
        Caption = '&Matricular'
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
          333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
          C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
          F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
          F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
          00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
          3333333373FF7333333333333000333333333333377733333333333333333333
          3333333333333333333333333333333333333333333333333333}
        Layout = blGlyphTop
        NumGlyphs = 2
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object spFechar: TSpeedButton
        Left = 15
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
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 874
    Height = 30
    Align = alTop
    BevelOuter = bvLowered
    Caption = 'Cadastro de Aluno'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 30
    Width = 874
    Height = 6
    Align = alTop
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Tb_Config: TTable
    DatabaseName = 'BDESisceb'
    TableName = 'dbo.Tb_Config'
    Left = 509
    Top = 35
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
  end
  object QyAlunos: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * from Tb_Alunos')
    Left = 509
    Top = 67
    object QyAlunosNome: TStringField
      FieldName = 'Nome'
      Origin = 'BDACADEMICO.Tb_Alunos.Nome'
      Size = 80
    end
    object QyAlunosSexo: TStringField
      FieldName = 'Sexo'
      Origin = 'BDACADEMICO.Tb_Alunos.Sexo'
      FixedChar = True
      Size = 1
    end
    object QyAlunosPai: TStringField
      FieldName = 'Pai'
      Origin = 'BDACADEMICO.Tb_Alunos.Pai'
      Size = 80
    end
    object QyAlunosMae: TStringField
      FieldName = 'Mae'
      Origin = 'BDACADEMICO.Tb_Alunos.Mae'
      Size = 80
    end
    object QyAlunosDt_Nasc: TDateTimeField
      FieldName = 'Dt_Nasc'
      Origin = 'BDACADEMICO.Tb_Alunos.Dt_Nasc'
    end
    object QyAlunosDt_Cadastro: TDateTimeField
      FieldName = 'Dt_Cadastro'
      Origin = 'BDACADEMICO.Tb_Alunos.Dt_Cadastro'
    end
    object QyAlunosEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'BDACADEMICO.Tb_Alunos.Endereco'
      Size = 80
    end
    object QyAlunosBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'BDACADEMICO.Tb_Alunos.Bairro'
      Size = 50
    end
    object QyAlunosCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'BDACADEMICO.Tb_Alunos.Cidade'
      Size = 50
    end
    object QyAlunosEstado: TStringField
      FieldName = 'Estado'
      Origin = 'BDACADEMICO.Tb_Alunos.Estado'
    end
    object QyAlunosComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'BDACADEMICO.Tb_Alunos.Complemento'
      Size = 50
    end
    object QyAlunosTel: TStringField
      FieldName = 'Tel'
      Origin = 'BDACADEMICO.Tb_Alunos.Tel'
      Size = 50
    end
    object QyAlunosCelular: TStringField
      FieldName = 'Celular'
      Origin = 'BDACADEMICO.Tb_Alunos.Celular'
      Size = 50
    end
    object QyAlunosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'BDACADEMICO.Tb_Alunos.CPF'
      Size = 50
    end
    object QyAlunosCI: TStringField
      FieldName = 'CI'
      Origin = 'BDACADEMICO.Tb_Alunos.CI'
      Size = 50
    end
    object QyAlunosemail: TStringField
      FieldName = 'email'
      Origin = 'BDACADEMICO.Tb_Alunos.email'
      Size = 50
    end
    object QyAlunosObs: TStringField
      FieldName = 'Obs'
      Origin = 'BDACADEMICO.Tb_Alunos.Obs'
      Size = 255
    end
    object QyAlunosDesconto: TFloatField
      FieldName = 'Desconto'
      Origin = 'BDACADEMICO.Tb_Alunos.Desconto'
    end
    object QyAlunosBolsista: TStringField
      FieldName = 'Bolsista'
      Origin = 'BDACADEMICO.Tb_Alunos.Bolsista'
      FixedChar = True
      Size = 1
    end
    object QyAlunosMatricula: TIntegerField
      FieldName = 'Matricula'
      Origin = 'BDACADEMICO.Tb_Alunos.Matricula'
    end
    object QyAlunosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'BDACADEMICO.Tb_Alunos.CEP'
      FixedChar = True
      Size = 8
    end
    object QyAlunosResponsavel: TStringField
      FieldName = 'Responsavel'
      Origin = 'BDACADEMICO.Tb_Alunos.Responsavel'
      Size = 80
    end
    object QyAlunosCpfResponsavel: TStringField
      FieldName = 'CpfResponsavel'
      Origin = 'BDACADEMICO.Tb_Alunos.CpfResponsavel'
      FixedChar = True
      Size = 14
    end
    object QyAlunosCiResponsavel: TStringField
      FieldName = 'CiResponsavel'
      Origin = 'BDACADEMICO.Tb_Alunos.CiResponsavel'
      FixedChar = True
      Size = 12
    end
    object QyAlunosFoneResponsavel: TStringField
      FieldName = 'FoneResponsavel'
      Origin = 'BDACADEMICO.Tb_Alunos.FoneResponsavel'
      FixedChar = True
      Size = 12
    end
    object QyAlunosFoto: TStringField
      FieldName = 'Foto'
      Origin = 'BDEXPOENTE.Tb_Alunos.Foto'
      Size = 255
    end
    object QyAlunosImprimir: TStringField
      FieldName = 'Imprimir'
      Origin = 'BDEXPOENTE.Tb_Alunos.Imprimir'
      FixedChar = True
      Size = 1
    end
  end
  object DsAlunos: TDataSource
    DataSet = QyAlunos
    Left = 509
    Top = 96
  end
  object ActionList1: TActionList
    Left = 605
    Top = 216
    object Salvar: TAction
      Caption = 'Salvar'
      ShortCut = 112
      OnExecute = spSalvarClick
    end
    object Novo: TAction
      ShortCut = 113
      OnExecute = spNovoClick
    end
    object Consultar: TAction
      Caption = 'Consultar'
      ShortCut = 16451
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    InitialDir = 'D:\Windows\Fotos'
    Left = 125
    Top = 144
  end
  object ActionList2: TActionList
    Left = 725
    Top = 87
    object Hab: TAction
      Caption = 'Habilitar'
      ShortCut = 24688
      OnExecute = HabExecute
    end
  end
end
