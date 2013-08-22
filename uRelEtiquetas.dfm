object frmRelEtiquetas: TfrmRelEtiquetas
  Left = 192
  Top = 114
  Width = 696
  Height = 480
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QyAlunos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 2
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      200.000000000000000000
      2970.000000000000000000
      250.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      250.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 94
      Width = 312
      Height = 123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        325.437500000000000000
        825.500000000000000000)
      BandType = rbDetail
      object QRExpr1: TQRExpr
        Left = 59
        Top = 49
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          156.104166666666700000
          129.645833333333300000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyAlunos.Nome'
        FontSize = 8
      end
      object QRLabel1: TQRLabel
        Left = 38
        Top = 23
        Width = 235
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          100.541666666666700000
          60.854166666666670000
          621.770833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'CENTRO EDUCACIONAL JOS'#201' E LUCAS LTDA'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 5
        Top = 50
        Width = 50
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          132.291666666666700000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Aluno(a):'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel3: TQRLabel
        Left = 5
        Top = 73
        Width = 87
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          193.145833333333300000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Seri'#233'/Nivel/Ano:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRExpr2: TQRExpr
        Left = 95
        Top = 72
        Width = 357
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          251.354166666666700000
          190.500000000000000000
          944.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 
          'QyAlunos.Serie + '#39' '#39' + '#39'/'#39' + '#39' '#39' +QyAlunos.Nivel + '#39' '#39' + '#39'/'#39' + '#39 +
          ' '#39' + QyAlunos.Ano'
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 5
        Top = 96
        Width = 40
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          13.229166666666670000
          254.000000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Turma:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRExpr3: TQRExpr
        Left = 48
        Top = 95
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          127.000000000000000000
          251.354166666666700000
          216.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyAlunos.Turma'
        FontSize = 8
      end
      object QRLabel5: TQRLabel
        Left = 197
        Top = 96
        Width = 50
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          521.229166666666700000
          254.000000000000000000
          132.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Situa'#231#227'o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRExpr4: TQRExpr
        Left = 251
        Top = 95
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          664.104166666666700000
          251.354166666666700000
          248.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyAlunos.Situacao'
        FontSize = 8
      end
    end
  end
  object QyAlunos: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      'select * from Vw_AlunosMatricula'
      'where CodSerie = 13'
      'order by Nome')
    Left = 16
    Top = 16
    object QyAlunosSerie: TStringField
      FieldName = 'Serie'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Serie'
      Size = 50
    end
    object QyAlunosMatricula: TIntegerField
      FieldName = 'Matricula'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Matricula'
    end
    object QyAlunosCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.CodSerie'
    end
    object QyAlunosAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Ano'
    end
    object QyAlunosTurma: TStringField
      FieldName = 'Turma'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Turma'
      FixedChar = True
      Size = 1
    end
    object QyAlunosSituacao: TStringField
      FieldName = 'Situacao'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Situacao'
      FixedChar = True
      Size = 15
    end
    object QyAlunosDt_Matricula: TDateTimeField
      FieldName = 'Dt_Matricula'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Dt_Matricula'
    end
    object QyAlunosNome: TStringField
      FieldName = 'Nome'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Nome'
      Size = 80
    end
    object QyAlunosNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Nivel'
      Size = 50
    end
    object QyAlunosCodNivel: TIntegerField
      FieldName = 'CodNivel'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.CodNivel'
    end
    object QyAlunosCI: TStringField
      FieldName = 'CI'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.CI'
      Size = 50
    end
    object QyAlunosPai: TStringField
      FieldName = 'Pai'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Pai'
      Size = 80
    end
    object QyAlunosMae: TStringField
      FieldName = 'Mae'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Mae'
      Size = 80
    end
    object QyAlunosDt_Nasc: TDateTimeField
      FieldName = 'Dt_Nasc'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Dt_Nasc'
    end
    object QyAlunosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.CPF'
      Size = 50
    end
    object QyAlunosEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Endereco'
      Size = 80
    end
    object QyAlunosBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Bairro'
      Size = 50
    end
    object QyAlunosCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Cidade'
      Size = 50
    end
    object QyAlunosEstado: TStringField
      FieldName = 'Estado'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Estado'
    end
    object QyAlunosTel: TStringField
      FieldName = 'Tel'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Tel'
      Size = 50
    end
    object QyAlunosCpfResponsavel: TStringField
      FieldName = 'CpfResponsavel'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.CpfResponsavel'
      FixedChar = True
      Size = 14
    end
    object QyAlunosResponsavel: TStringField
      FieldName = 'Responsavel'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Responsavel'
      Size = 80
    end
    object QyAlunosCiResponsavel: TStringField
      FieldName = 'CiResponsavel'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.CiResponsavel'
      FixedChar = True
      Size = 12
    end
    object QyAlunosFoneResponsavel: TStringField
      FieldName = 'FoneResponsavel'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.FoneResponsavel'
      FixedChar = True
      Size = 12
    end
    object QyAlunosFoto: TStringField
      FieldName = 'Foto'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Foto'
      Size = 255
    end
    object QyAlunosImprimir: TStringField
      FieldName = 'Imprimir'
      Origin = 'BDESISCEB.Vw_AlunosMatricula.Imprimir'
      FixedChar = True
      Size = 1
    end
  end
end
