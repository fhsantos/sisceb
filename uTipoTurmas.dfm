object frmTipoTurma: TfrmTipoTurma
  Left = 277
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Rela'#231#227'o de Turmas e Turnos'
  ClientHeight = 169
  ClientWidth = 256
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
    Width = 256
    Height = 169
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 254
      Height = 138
      Align = alTop
      Color = 14286847
      DataSource = dsforma
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Turma'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 54
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Turno'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Valor'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 68
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 178
      Top = 141
      Width = 75
      Height = 25
      Caption = '&Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Kind = bkClose
    end
  end
  object QyTurma: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'select * from Tb_Turmas')
    Left = 112
    Top = 24
    object QyTurmaCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Tb_Turmas.CodSerie'
    end
    object QyTurmaTurma: TStringField
      FieldName = 'Turma'
      Origin = 'BDEXPOENTE.Tb_Turmas.Turma'
      FixedChar = True
      Size = 1
    end
    object QyTurmaTurno: TStringField
      FieldName = 'Turno'
      Origin = 'BDEXPOENTE.Tb_Turmas.Turno'
      FixedChar = True
      Size = 10
    end
    object QyTurmaCapacidade: TIntegerField
      FieldName = 'Capacidade'
      Origin = 'BDEXPOENTE.Tb_Turmas.Capacidade'
    end
    object QyTurmaValor: TFloatField
      FieldName = 'Valor'
      Origin = 'BDEXPOENTE.Tb_Turmas.Valor'
    end
  end
  object dsforma: TDataSource
    DataSet = QyTurma
    Left = 112
    Top = 56
  end
end
