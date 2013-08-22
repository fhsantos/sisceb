object FrmSenha: TFrmSenha
  Left = 317
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = '/'
  ClientHeight = 234
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 40
    Width = 305
    Height = 194
    Align = alBottom
    Caption = 'Panel1'
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 132
      Top = 161
      Width = 81
      Height = 28
      Caption = '&OK'
      Default = True
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 216
      Top = 161
      Width = 81
      Height = 28
      Cancel = True
      Caption = '&Cancelar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn2Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000010000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object GroupBox1: TGroupBox
      Left = 0
      Top = 5
      Width = 305
      Height = 149
      Caption = 'Identifica'#231#227'o de Usu'#225'rio'
      Color = clBtnFace
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Label5: TLabel
        Left = 103
        Top = 20
        Width = 175
        Height = 60
        AutoSize = False
        Caption = 
          'Para ter acesso ao Sistema, '#233' necess'#225'rio preencher corretamente ' +
          'os campos abaixo.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
      end
      object Image2: TImage
        Left = 16
        Top = 21
        Width = 33
        Height = 33
        Picture.Data = {
          055449636F6E0000010001002020100000000000E80200001600000028000000
          2000000040000000010004000000000080020000000000000000000000000000
          0000000000000000000080000080000000808000800000008000800080800000
          C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
          FFFFFF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000088888888888888888
          000000000000000F7777777777777778000000000000000F777777FFF7777778
          000000000000000F77777708F7777778000000000000000F77777708F7777778
          000000000000000F77777708F7777778000000000000000F777770880F777778
          000000000000000F777770880F777778000000000000000F7777770077777778
          000000000000000F7777777777777778000000000000000F7777777777777778
          000000000000000FFFFFFFFFFFFFFFF7000000000000000F7777777777777777
          0000000000000000F800877777800870000000000000000078F70777778F7070
          000000000000000000F70800080F7000000000000000000000F70000000F7000
          000000000000000000F70000000F7000000000000000000000F70000000F7000
          000000000000000000F7800000F77000000000000000000000FF77000F778000
          0000000000000000000FF77777780000000000000000000000000FFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0000FFFC00007FFC00007F
          FC00007FFC00007FFC00007FFC00007FFC00007FFC00007FFC00007FFC00007F
          FC00007FFC00007FFC00007FFE0000FFFE0000FFFF0001FFFF87C3FFFF87C3FF
          FF87C3FFFF8383FFFF8003FFFFC007FFFFE00FFFFFF83FFFFFFFFFFFFFFFFFFF
          FFFFFFFF}
      end
      object Image3: TImage
        Left = 40
        Top = 32
        Width = 44
        Height = 30
        Picture.Data = {
          055449636F6E0000010001002020100000000000E80200001600000028000000
          2000000040000000010004000000000080020000000000000000000000000000
          0000000000000000000080000080000000808000800000008000800080800000
          C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
          FFFFFF0000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000088
          8880000000000000000000000000888888888000000000000000000000088888
          8888880000008000008880800088888888888880000888888888888880888888
          8888888000888888888888888888888888888888088888888888888888888888
          8888888888888888888888888888888888888888088888888888888888888888
          8888888800888888888888888888888888888888000000000000008800888888
          888888800000000000000080008888000008888000000000000000000008007E
          7E70080000000000000000000000E7E7E7E7E0800000000000000000008E7E7E
          7E7E7E800000EF0007EFE00F0007E7E7E7FF87080000000000000000007E7E7E
          7E00087000E7E7E7E7E7E7E7E7E7E7E7E00000E00E7E7E7E7E7E7E7E7E7E7E7E
          7000007007F7F7F7F7F7F7F7F7F7E7E7E07770E0080000000000000F007E7E7E
          7E000E7800000000000000070007E7E7E7E7E7080000000000000080008F7E7E
          7E7E7E8000000000000000000008FFE7E7E7E0000000000000000000000080FF
          7F70800000000000000000000000008000800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1FFFFFF007FFFFE003F7C5C001
          E0004001C0000000800000000000000080000000C0000000FFFCC001FFFDC001
          FFFFE003FFFFE001F384C001E0004000C0000000800000380000003800000000
          80000000FFFC4000FFFCC001FFFFE003FFFFF007FFFFFC1FFFFFFFFFFFFFFFFF
          FFFFFFFF}
      end
      object Label1: TLabel
        Left = 9
        Top = 95
        Width = 45
        Height = 14
        Caption = '&Usu'#225'rio:'
        FocusControl = EdtUsuario
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 120
        Top = 95
        Width = 37
        Height = 14
        Caption = '&Senha:'
        FocusControl = EdtSenha
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtUsuario: TEdit
        Left = 9
        Top = 111
        Width = 102
        Height = 22
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = EdtUsuarioChange
        OnKeyPress = EdtUsuarioKeyPress
      end
      object Panel3: TPanel
        Left = 234
        Top = 96
        Width = 64
        Height = 41
        BevelOuter = bvNone
        Color = clGray
        TabOrder = 1
      end
      object Panel2: TPanel
        Left = 230
        Top = 92
        Width = 66
        Height = 42
        TabOrder = 2
        object Bevel2: TBevel
          Left = 8
          Top = 23
          Width = 51
          Height = 14
        end
        object Label3: TLabel
          Left = 10
          Top = 23
          Width = 45
          Height = 12
          Alignment = taCenter
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 4
          Top = 4
          Width = 60
          Height = 14
          Caption = 'Tentativas:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
      end
      object EdtSenha: TEdit
        Left = 120
        Top = 111
        Width = 102
        Height = 22
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        PasswordChar = '*'
        TabOrder = 3
        OnChange = EdtSenhaChange
        OnKeyPress = EdtSenhaKeyPress
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 305
    Height = 39
    Align = alTop
    BevelOuter = bvLowered
    Caption = 'Bem-vindo ao Sistema'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object Panel5: TPanel
    Left = 0
    Top = 39
    Width = 305
    Height = 6
    Align = alTop
    BevelOuter = bvLowered
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object Tb_Expirou: TTable
    DatabaseName = 'BDESisceb'
    TableName = 'dbo.Tb_Expirou'
    Left = 256
    Top = 45
    object Tb_ExpirouContador: TIntegerField
      FieldName = 'Contador'
      Required = True
    end
  end
end
