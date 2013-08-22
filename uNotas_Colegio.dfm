object frmNotas_Colegio: TfrmNotas_Colegio
  Left = 291
  Top = 289
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 533
  ClientWidth = 958
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
    Width = 958
    Height = 33
    Align = alTop
    Caption = 'LAN'#199'AMENTO DE NOTAS - ENSINO M'#201'DIO'
    Color = clGreen
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 37
    Width = 958
    Height = 128
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 290
      Top = 13
      Width = 33
      Height = 15
      Caption = 'Serie:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 8
      Top = 13
      Width = 91
      Height = 15
      Caption = 'Nivel de Ensino :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 290
      Top = 69
      Width = 68
      Height = 15
      Caption = 'Disciplinas :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 8
      Top = 69
      Width = 43
      Height = 15
      Caption = 'Turma :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 168
      Top = 69
      Width = 28
      Height = 15
      Caption = 'Ano :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object spfiltrar: TSpeedButton
      Left = 599
      Top = 33
      Width = 107
      Height = 84
      Caption = '&Filtrar -  F1'
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
        FF00FF00FF00FF00FF0084000000840000008400000084000000840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0084000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
        FF00C6C6C600FFFFFF0084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0084000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
        C600FFFFFF00C6C6C60084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0084000000FFFFFF00C6C6C600FFFFFF00C6C6C600FFFF
        FF00C6C6C600FFFFFF0084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF000000FF00000084000000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6
        C600FFFFFF00C6C6C60084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF000000FFFFFF0084000000C6C6C6008400000084000000840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF000000FFFFFF0084000000840000008400000084000000840000008400
        0000840000008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00840000008400
        0000FF000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084000000C6C6
        C600FF000000C6C6C600FF000000FF000000FF000000FF000000FF000000FF00
        0000FF000000FF00FF008400000084000000840000008400000084000000FFFF
        FF00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
        0000FF000000FF00FF00840000008400000084000000FF00FF0084000000C6C6
        C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60084000000FF00
        FF00FF00FF00FF00FF008400000084000000840000008484840084000000FFFF
        FF00C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C600FFFFFF0084000000FF00
        FF00FF00FF00FF00FF0084000000FF00FF00FF00FF008400000084000000C6C6
        C60084000000840000008400000084000000840000008400000084000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF008484840084000000840000008400
        000084000000840000008400000084000000840000008400000084000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF0084000000FF00FF00}
      Layout = blGlyphTop
      ParentFont = False
      PopupMenu = PopupMenu1
      OnClick = spfiltrarClick
    end
    object SpeedButton1: TSpeedButton
      Left = 708
      Top = 33
      Width = 107
      Height = 84
      Caption = '&Sair - F2'
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
      OnClick = SpeedButton1Click
    end
    object cbSerie: TComboBox
      Left = 290
      Top = 34
      Width = 300
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 1
      OnEnter = cbSerieEnter
      OnKeyPress = cbSerieKeyPress
    end
    object cbNivel: TComboBox
      Left = 8
      Top = 34
      Width = 281
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 0
      OnEnter = cbNivelEnter
      OnKeyPress = cbSerieKeyPress
      Items.Strings = (
        ''
        '1'
        '2')
    end
    object cbTurma: TComboBox
      Left = 8
      Top = 94
      Width = 154
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 2
      OnEnter = cbTurmaEnter
      OnKeyPress = cbSerieKeyPress
    end
    object cbAno: TComboBox
      Left = 168
      Top = 94
      Width = 119
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 3
      Text = '2010'
      OnKeyPress = cbSerieKeyPress
      Items.Strings = (
        ''
        '2001'
        '2002'
        '2003'
        '2004'
        '2005'
        '2006'
        '2007'
        '2008'
        '2009'
        '2010')
    end
    object cbDisciplinas: TComboBox
      Left = 290
      Top = 94
      Width = 300
      Height = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 15
      ParentFont = False
      TabOrder = 4
      OnEnter = cbDisciplinasEnter
      OnKeyPress = cbSerieKeyPress
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 33
    Width = 958
    Height = 4
    Align = alTop
    Color = clRed
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -17
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 0
    Top = 165
    Width = 958
    Height = 368
    Align = alClient
    TabOrder = 3
    object DBGrid1: TDBGrid
      Left = 6
      Top = 20
      Width = 946
      Height = 328
      Align = alClient
      DataSource = dsNotas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgCancelOnExit]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Arial'
      TitleFont.Style = []
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Color = 11206655
          Expanded = False
          FieldName = 'Aluno'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ReadOnly = True
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -12
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 270
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unid1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Not 1'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unid2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Not 2'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unid3'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Not 3'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unid4'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Alignment = taCenter
          Title.Caption = 'Not 4'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unid5'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Not 5'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Unid6'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Title.Caption = 'Not 6'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Media'
          Title.Alignment = taCenter
          Title.Caption = 'M'#233'dia'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'RF'
          Title.Alignment = taCenter
          Title.Caption = 'R. F.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'PF'
          Title.Alignment = taCenter
          Title.Caption = 'P. F.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MedGlobal'
          Title.Alignment = taCenter
          Title.Caption = 'M. G.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 35
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'MediaFinal'
          Title.Alignment = taCenter
          Title.Caption = 'M. Final'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 50
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'F1'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 40
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'F2'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 45
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'Sit'
          Title.Alignment = taCenter
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Arial'
          Title.Font.Style = [fsBold]
          Width = 44
          Visible = True
        end>
    end
    object Panel5: TPanel
      Left = 1
      Top = 348
      Width = 956
      Height = 19
      Align = alBottom
      BevelInner = bvLowered
      TabOrder = 1
    end
    object Panel6: TPanel
      Left = 1
      Top = 1
      Width = 956
      Height = 19
      Align = alTop
      BevelInner = bvLowered
      TabOrder = 2
    end
    object Panel7: TPanel
      Left = 952
      Top = 20
      Width = 5
      Height = 328
      Align = alRight
      BevelInner = bvLowered
      TabOrder = 3
    end
    object Panel8: TPanel
      Left = 1
      Top = 20
      Width = 5
      Height = 328
      Align = alLeft
      BevelInner = bvLowered
      TabOrder = 4
    end
  end
  object QyConfig: TQuery
    CachedUpdates = True
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'select * from Tb_Config')
    Left = 704
    Top = 285
    object QyConfigRazao: TStringField
      FieldName = 'Razao'
      Origin = 'BDACADEMICO.Tb_Config.Razao'
      Size = 100
    end
    object QyConfigCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'BDACADEMICO.Tb_Config.CNPJ'
      FixedChar = True
      Size = 16
    end
    object QyConfigEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'BDACADEMICO.Tb_Config.Endereco'
      Size = 80
    end
    object QyConfigTel: TStringField
      FieldName = 'Tel'
      Origin = 'BDACADEMICO.Tb_Config.Tel'
      FixedChar = True
      Size = 12
    end
    object QyConfigFax: TStringField
      FieldName = 'Fax'
      Origin = 'BDACADEMICO.Tb_Config.Fax'
      FixedChar = True
      Size = 12
    end
    object QyConfigAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDACADEMICO.Tb_Config.Ano'
    end
    object QyConfigDigito: TIntegerField
      FieldName = 'Digito'
      Origin = 'BDACADEMICO.Tb_Config.Digito'
    end
    object QyConfigMedia: TFloatField
      FieldName = 'Media'
      Origin = 'BDACADEMICO.Tb_Config.Media'
    end
  end
  object ActionList1: TActionList
    Left = 736
    Top = 285
    object Anterior: TAction
      Caption = 'Anterior'
    end
    object Proximo: TAction
      ShortCut = 16464
    end
    object Calc_Nota: TAction
      Caption = 'Calc_Nota'
      ShortCut = 16451
    end
    object Verif_Nota: TAction
      Caption = 'Verif_Nota'
    end
    object Filtrar: TAction
      ShortCut = 112
      OnExecute = spfiltrarClick
    end
  end
  object upNotas: TUpdateSQL
    ModifySQL.Strings = (
      'update Tb_Matricula_Disciplinas'
      'set'
      '  Matricula = :Matricula,'
      '  CodDisciplina = :CodDisciplina,'
      '  Ano = :Ano,'
      '  Turma = :Turma,'
      '  Unid1 = :Unid1,'
      '  Unid2 = :Unid2,'
      '  Unid3 = :Unid3,'
      '  Unid4 = :Unid4,'
      '  Unid5 = :Unid5,'
      '  Unid6 = :Unid6,'
      '  Rec1S =:Rec1S,'
      '  Rec2S =:Rec2S,'
      '  Rec3S =:Rec3S,'
      '  Rec4S =:Rec4S,'
      '  Rec5S =:Rec5S,'
      '  Rec6S =:Rec6S,'
      '  PF = :PF,'
      '  RF = :RF,'
      '  F1 = :F1,'
      '  F2 = :F2,'
      '  F3 = :F3,'
      '  Sit = :Sit,'
      '  CodSerie = :CodSerie'
      'where'
      '  Matricula = :OLD_Matricula and'
      '  CodDisciplina = :OLD_CodDisciplina and'
      '  Ano = :OLD_Ano and'
      '  CodSerie = :OLD_CodSerie')
    InsertSQL.Strings = (
      'insert into Tb_Matricula_Disciplinas'
      
        '  (Matricula, CodDisciplina, Ano, Turma, Unid1, Unid2, Unid3, Un' +
        'id4, Unid5, Unid6, '
      'Rec1, Rec2S, Rec3S, Rec4S, Rec5S, Rec6S, SPF, RF,'
      '   F1, F2, F3, Sit, CodSerie)'
      'values'
      '  (:Matricula, :CodDisciplina, :Ano, :Turma, :Unid1, '
      
        '   :Unid2, :Unid3, :Unid4, :Unid5, :Unid6, :Rec1, :Rec2, :Rec3, ' +
        ':Rec4, :Rec5, :Rec6,'
      ':PF, :RF,:F1, :F2, :F3, :Sit, :CodSerie)')
    DeleteSQL.Strings = (
      'delete from Tb_Matricula_Disciplinas'
      'where'
      '  Matricula = :OLD_Matricula and'
      '  CodDisciplina = :OLD_CodDisciplina and'
      '  Ano = :OLD_Ano and'
      '  CodSerie = :OLD_CodSerie')
    Left = 704
    Top = 216
  end
  object dsNotas: TDataSource
    DataSet = QyNotas
    Left = 736
    Top = 216
  end
  object QyNotas: TQuery
    CachedUpdates = True
    BeforePost = QyNotasBeforePost
    AfterPost = QyNotasAfterPost
    AfterCancel = QyNotasAfterCancel
    AfterDelete = QyNotasAfterDelete
    OnCalcFields = QyNotasCalcFields
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'select * from Vw_Notas_Colegio')
    UpdateObject = upNotas
    Left = 736
    Top = 248
    object QyNotasMatricula: TIntegerField
      FieldName = 'Matricula'
      Origin = 'BDACADEMICO.Vw_Notas.Matricula'
    end
    object QyNotasCodDisciplina: TIntegerField
      FieldName = 'CodDisciplina'
      Origin = 'BDACADEMICO.Vw_Notas.CodDisciplina'
    end
    object QyNotasAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDACADEMICO.Vw_Notas.Ano'
    end
    object QyNotasTurma: TStringField
      FieldName = 'Turma'
      Origin = 'BDACADEMICO.Vw_Notas.Turma'
      FixedChar = True
      Size = 1
    end
    object QyNotasDisciplina: TStringField
      FieldName = 'Disciplina'
      Origin = 'BDACADEMICO.Vw_Notas.Disciplina'
      Size = 30
    end
    object QyNotasAluno: TStringField
      FieldName = 'Aluno'
      Origin = 'BDACADEMICO.Vw_Notas.ALuno'
      Size = 80
    end
    object QyNotasMD1S: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MD1S'
      Calculated = True
    end
    object QyNotasMD2S: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MD2S'
      Calculated = True
    end
    object QyNotasUnid1: TStringField
      FieldName = 'Unid1'
      Origin = 'BDACADEMICO.Vw_Notas.Unid1'
      OnValidate = QyNotasUnid1Validate
      FixedChar = True
      Size = 4
    end
    object QyNotasUnid2: TStringField
      FieldName = 'Unid2'
      Origin = 'BDACADEMICO.Vw_Notas.Unid2'
      OnValidate = QyNotasUnid2Validate
      FixedChar = True
      Size = 4
    end
    object QyNotasF1: TIntegerField
      FieldName = 'F1'
      Origin = 'BDACADEMICO.Vw_Notas.F1'
    end
    object QyNotasF2: TIntegerField
      FieldName = 'F2'
      Origin = 'BDACADEMICO.Vw_Notas.F2'
    end
    object QyNotasF3: TIntegerField
      FieldName = 'F3'
      Origin = 'BDACADEMICO.Vw_Notas.F3'
    end
    object QyNotasSit: TStringField
      FieldName = 'Sit'
      Origin = 'BDACADEMICO.Vw_Notas.Sit'
      FixedChar = True
      Size = 4
    end
    object QyNotasCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Vw_Notas.CodSerie'
    end
    object QyNotasUnid3: TStringField
      FieldName = 'Unid3'
      Origin = 'BDEXPOENTE.Vw_Notas.Unid3'
      OnValidate = QyNotasUnid3Validate
      FixedChar = True
      Size = 4
    end
    object QyNotasUnid4: TStringField
      FieldName = 'Unid4'
      Origin = 'BDEXPOENTE.Vw_Notas.Unid4'
      OnValidate = QyNotasUnid4Validate
      FixedChar = True
      Size = 4
    end
    object QyNotasSerie: TStringField
      FieldName = 'Serie'
      Origin = 'BDEXPOENTE.Vw_Notas.Serie'
      Size = 50
    end
    object QyNotasNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'BDEXPOENTE.Vw_Notas.Nivel'
      Size = 50
    end
    object QyNotasMedia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Media'
      Calculated = True
    end
    object QyNotasMediaFinal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MediaFinal'
      Calculated = True
    end
    object QyNotasSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'BDEXPOENTE.Vw_Notas.Situacao'
      FixedChar = True
      Size = 15
    end
    object QyNotasPF: TStringField
      FieldName = 'PF'
      Origin = 'BDEXPOENTE.Vw_Notas.PF'
      FixedChar = True
      Size = 4
    end
    object QyNotasRF: TStringField
      FieldName = 'RF'
      Origin = 'BDEXPOENTE.Vw_Notas.RF'
      FixedChar = True
      Size = 4
    end
    object QyNotasMedGlobal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MedGlobal'
      Calculated = True
    end
    object QyNotasUnid5: TStringField
      FieldName = 'Unid5'
      Origin = 'BDEXPOENTE.Vw_Notas_Colegio.Unid5'
      FixedChar = True
      Size = 4
    end
    object QyNotasUnid6: TStringField
      FieldName = 'Unid6'
      Origin = 'BDEXPOENTE.Vw_Notas_Colegio.Unid6'
      FixedChar = True
      Size = 4
    end
    object QyNotasRec1S: TStringField
      FieldName = 'Rec1S'
      Origin = 'BDEXPOENTE.Vw_Notas_Colegio.Rec1S'
      FixedChar = True
      Size = 4
    end
    object QyNotasRec2S: TStringField
      FieldName = 'Rec2S'
      Origin = 'BDEXPOENTE.Vw_Notas_Colegio.Rec2S'
      FixedChar = True
      Size = 4
    end
    object QyNotasRec3S: TStringField
      FieldName = 'Rec3S'
      Origin = 'BDEXPOENTE.Vw_Notas_Colegio.Rec3S'
      FixedChar = True
      Size = 4
    end
    object QyNotasRec4S: TStringField
      FieldName = 'Rec4S'
      Origin = 'BDEXPOENTE.Vw_Notas_Colegio.Rec4S'
      FixedChar = True
      Size = 4
    end
    object QyNotasRec5S: TStringField
      FieldName = 'Rec5S'
      Origin = 'BDEXPOENTE.Vw_Notas_Colegio.Rec5S'
      FixedChar = True
      Size = 4
    end
    object QyNotasRec6S: TStringField
      FieldName = 'Rec6S'
      Origin = 'BDEXPOENTE.Vw_Notas_Colegio.Rec6S'
      FixedChar = True
      Size = 4
    end
    object QyNotasMD3S: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MD3S'
      Calculated = True
    end
    object QyNotasMD4S: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MD4S'
      Calculated = True
    end
    object QyNotasMD5S: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MD5S'
      Calculated = True
    end
    object QyNotasMD6S: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MD6S'
      Calculated = True
    end
  end
  object Tb_Config: TTable
    DatabaseName = 'BDESisceb'
    TableName = 'dbo.Tb_Config'
    Left = 704
    Top = 317
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
    object Tb_ConfigMedia: TFloatField
      FieldName = 'Media'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 864
    Top = 109
    object Senhas1: TMenuItem
      Caption = 'Senhas'
      OnClick = Senhas1Click
    end
  end
end
