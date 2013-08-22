object frmTipoNota: TfrmTipoNota
  Left = 277
  Top = 259
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'NOTAS'
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
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkClose
    end
    object rdNotas: TRadioGroup
      Left = 14
      Top = 5
      Width = 225
      Height = 129
      Caption = 'Escolha a op'#231#227'o abaixo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = [fsBold]
      Items.Strings = (
        'Ensino Regular'
        'Supletivo Fund. e M'#233'dio')
      ParentFont = False
      TabOrder = 1
      OnClick = rdNotasClick
    end
  end
end
