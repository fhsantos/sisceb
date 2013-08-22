object frmSenhaCaixa: TfrmSenhaCaixa
  Left = 311
  Top = 186
  BorderStyle = bsDialog
  Caption = 'Controle de Senha'
  ClientHeight = 116
  ClientWidth = 212
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
    Width = 212
    Height = 116
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 55
      Height = 19
      Caption = 'Senha:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 152
      Top = 80
      Width = 49
      Height = 22
      Caption = '&Sair'
      OnClick = SpeedButton1Click
    end
    object edSenha: TEdit
      Left = 16
      Top = 40
      Width = 185
      Height = 30
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 0
    end
  end
  object ActionList1: TActionList
    Left = 144
    Top = 16
    object Action1: TAction
      Caption = 'Sair'
      ShortCut = 13
      OnExecute = SpeedButton1Click
    end
  end
end
