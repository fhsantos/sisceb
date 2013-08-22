object frmformapatgos: Tfrmformapatgos
  Left = 191
  Top = 133
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Tipo de Pagamento'
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
          Color = clWindow
          Expanded = False
          FieldName = 'CodForma'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 62
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Descricao'
          Title.Alignment = taCenter
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clNavy
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 154
          Visible = True
        end>
    end
    object BitBtn1: TBitBtn
      Left = 98
      Top = 141
      Width = 75
      Height = 25
      TabOrder = 1
      Kind = bkOK
    end
    object BitBtn2: TBitBtn
      Left = 178
      Top = 141
      Width = 75
      Height = 25
      TabOrder = 2
      Kind = bkCancel
    end
  end
  object QyForma: TQuery
    DatabaseName = 'BDSisceb'
    SQL.Strings = (
      'select * from Tb_Formapagto')
    Left = 112
    Top = 24
    object QyFormaCodForma: TIntegerField
      FieldName = 'CodForma'
      Origin = 'BDACADEMICO.Tb_Formapagto.CodForma'
    end
    object QyFormaDescricao: TStringField
      FieldName = 'Descricao'
      Origin = 'BDACADEMICO.Tb_Formapagto.Descricao'
      Size = 30
    end
  end
  object dsforma: TDataSource
    DataSet = QyForma
    Left = 112
    Top = 56
  end
end
