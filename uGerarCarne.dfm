object frmGerarCarne: TfrmGerarCarne
  Left = 266
  Top = 110
  Width = 374
  Height = 368
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
    Width = 366
    Height = 334
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 8
      Width = 53
      Height = 16
      Caption = 'Parcela:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 80
      Width = 21
      Height = 16
      Caption = 'De:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 256
      Top = 248
      Width = 97
      Height = 33
      Caption = '&Gerar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton1Click
    end
    object Label3: TLabel
      Left = 208
      Top = 8
      Width = 123
      Height = 16
      Caption = 'Valor Mensalidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 208
      Top = 80
      Width = 102
      Height = 16
      Caption = 'M'#234's da Parcela:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 24
      Top = 160
      Width = 29
      Height = 16
      Caption = 'Ano:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton2: TSpeedButton
      Left = 256
      Top = 288
      Width = 97
      Height = 33
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton2Click
    end
    object Label6: TLabel
      Left = 24
      Top = 226
      Width = 125
      Height = 16
      Caption = 'Dia de Vencimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbParc1: TComboBox
      Left = 24
      Top = 40
      Width = 145
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 19
      ParentFont = False
      TabOrder = 0
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10')
    end
    object cbParc2: TComboBox
      Left = 24
      Top = 112
      Width = 145
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 19
      ParentFont = False
      TabOrder = 1
      Text = '12'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object edValor: TEdit
      Left = 208
      Top = 40
      Width = 145
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Text = '130'
    end
    object edMes: TEdit
      Left = 208
      Top = 112
      Width = 145
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Text = '1'
    end
    object cbAno: TComboBox
      Left = 24
      Top = 184
      Width = 332
      Height = 27
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ItemHeight = 19
      ParentFont = False
      TabOrder = 4
      Text = '2012'
      Items.Strings = (
        '2010'
        '2011'
        '2012')
    end
    object edVencimento: TEdit
      Left = 24
      Top = 248
      Width = 145
      Height = 27
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Text = '28'
    end
  end
end
