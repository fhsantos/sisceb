object frmConsulta: TfrmConsulta
  Left = 298
  Top = 156
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 360
  ClientWidth = 521
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
    Width = 521
    Height = 360
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 136
      Top = 49
      Width = 238
      Height = 14
      Caption = 'Digite aqui abaixo os dados para consulta....'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 448
      Top = 328
      Width = 65
      Height = 27
      Caption = '&Fechar'
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
      NumGlyphs = 2
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object rdgConsulta: TRadioGroup
      Left = 5
      Top = 7
      Width = 121
      Height = 86
      Caption = 'Tipo de Consulta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Nome'
        'Matricula')
      ParentFont = False
      TabOrder = 1
    end
    object edConsultar: TEdit
      Left = 132
      Top = 71
      Width = 382
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
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 112
      Width = 505
      Height = 201
      DataSource = dsAlunos
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = SpeedButton1Click
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Matricula'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 340
          Visible = True
        end>
    end
  end
  object QyAlunos: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'Select * from Tb_Alunos')
    Left = 333
    Top = 3
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
  end
  object dsAlunos: TDataSource
    DataSet = QyAlunos
    Left = 368
    Top = 4
  end
end
