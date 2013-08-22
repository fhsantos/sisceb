object frmRelDiarioNotasNotas: TfrmRelDiarioNotasNotas
  Left = 171
  Top = 155
  Width = 1036
  Height = 630
  Caption = '/'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Left = -1
    Top = 8
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = QyMaster
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
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 1
    PrinterSettings.LastPage = 1
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object ColumnHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 187
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
        494.770833333333300000
        2770.187500000000000000)
      BandType = rbColumnHeader
      object QRShape16: TQRShape
        Left = 753
        Top = 124
        Width = 79
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          1992.312500000000000000
          328.083333333333000000
          209.020833333333000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRShape6: TQRShape
        Left = 1
        Top = 1
        Width = 1045
        Height = 124
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          328.083333333333000000
          2.645833333333330000
          2.645833333333330000
          2764.895833333330000000)
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 886
        Top = 8
        Width = 153
        Height = 113
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          298.979166666667000000
          2344.208333333330000000
          21.166666666666700000
          404.812500000000000000)
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 1
        Top = 124
        Width = 753
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          2.645833333333330000
          328.083333333333000000
          1992.312500000000000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRSysData3: TQRSysData
        Left = 964
        Top = 50
        Width = 70
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          2550.583333333333000000
          132.291666666666700000
          185.208333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'P'#225'gina : '
        Transparent = False
        FontSize = 7
      end
      object QRSysData2: TQRSysData
        Left = 978
        Top = 32
        Width = 56
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          2587.625000000000000000
          84.666666666666680000
          148.166666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Hora : '
        Transparent = False
        FontSize = 7
      end
      object QRSysData1: TQRSysData
        Left = 978
        Top = 14
        Width = 56
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333340000
          2587.625000000000000000
          37.041666666666670000
          148.166666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsDate
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = 'Data : '
        Transparent = False
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 4
        Top = 96
        Width = 67
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          10.583333333333330000
          254.000000000000000000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Disciplina:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr7: TQRExpr
        Left = 77
        Top = 96
        Width = 118
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          203.729166666666700000
          254.000000000000000000
          312.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyMaster.Disciplina'
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 729
        Top = 96
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1928.812500000000000000
          254.000000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Turma:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 202
        Top = 96
        Width = 39
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          534.458333333333300000
          254.000000000000000000
          103.187500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Serie:'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr8: TQRExpr
        Left = 247
        Top = 96
        Width = 92
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          653.520833333333300000
          254.000000000000000000
          243.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyMaster.Serie'
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 464
        Top = 96
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1227.666666666667000000
          254.000000000000000000
          261.937500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Nivel de Ensino'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRExpr9: TQRExpr
        Left = 566
        Top = 96
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1497.541666666667000000
          254.000000000000000000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyMaster.Nivel'
        FontSize = 10
      end
      object QRExpr11: TQRExpr
        Left = 781
        Top = 96
        Width = 98
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2066.395833333333000000
          254.000000000000000000
          259.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyMaster.Turma'
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 107
        Top = 140
        Width = 43
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          283.104166666666700000
          370.416666666666700000
          113.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Alunos:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel4: TQRLabel
        Left = 252
        Top = 141
        Width = 54
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          666.750000000000000000
          373.062500000000000000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Data Aula:'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel11: TQRLabel
        Left = 416
        Top = 32
        Width = 214
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1100.666666666667000000
          84.666666666666670000
          566.208333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = 'DI'#193'RIO DE NOTAS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 18
      end
      object QRShape7: TQRShape
        Left = 321
        Top = 124
        Width = 50
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          849.312500000000000000
          328.083333333333000000
          132.291666666667000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 370
        Top = 124
        Width = 50
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          978.958333333333000000
          328.083333333333000000
          132.291666666667000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRLabel2: TQRLabel
        Left = 325
        Top = 140
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          859.895833333333300000
          370.416666666666700000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'UNID 1'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 938
        Top = 96
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2481.791666666667000000
          254.000000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Ano - 2010'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 374
        Top = 140
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          989.541666666666700000
          370.416666666666700000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'UNID 2'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 468
        Top = 124
        Width = 50
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          1238.250000000000000000
          328.083333333333000000
          132.291666666667000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRLabel6: TQRLabel
        Left = 472
        Top = 140
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1248.833333333333000000
          370.416666666666700000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'UNID 4'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape10: TQRShape
        Left = 419
        Top = 124
        Width = 50
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          1108.604166666670000000
          328.083333333333000000
          132.291666666667000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRLabel5: TQRLabel
        Left = 423
        Top = 140
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1119.187500000000000000
          370.416666666666700000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'UNID 3'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 517
        Top = 124
        Width = 81
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          1367.895833333330000000
          328.083333333333000000
          214.312500000000000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRLabel12: TQRLabel
        Left = 523
        Top = 132
        Width = 69
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1383.770833333330000000
          349.250000000000000000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M'#201'DIA'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape14: TQRShape
        Left = 597
        Top = 124
        Width = 79
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          1579.562500000000000000
          328.083333333333000000
          209.020833333333000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRLabel13: TQRLabel
        Left = 601
        Top = 132
        Width = 69
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1590.145833333330000000
          349.250000000000000000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'PROVA FINAL'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape15: TQRShape
        Left = 675
        Top = 124
        Width = 79
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          1785.937500000000000000
          328.083333333333000000
          209.020833333333000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRLabel14: TQRLabel
        Left = 680
        Top = 132
        Width = 69
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          1799.166666666670000000
          349.250000000000000000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M'#233'dia Global'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 758
        Top = 132
        Width = 69
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          2005.541666666670000000
          349.250000000000000000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'REC. FINAL'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape17: TQRShape
        Left = 831
        Top = 124
        Width = 79
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          2198.687500000000000000
          328.083333333333000000
          209.020833333333000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRLabel16: TQRLabel
        Left = 836
        Top = 132
        Width = 69
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          2211.916666666670000000
          349.250000000000000000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M'#201'DIA FINAL'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape18: TQRShape
        Left = 909
        Top = 124
        Width = 137
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666667000000
          2405.062500000000000000
          328.083333333333000000
          362.479166666667000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRShape19: TQRShape
        Left = 909
        Top = 124
        Width = 137
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666700000
          2405.062500000000000000
          328.083333333333000000
          362.479166666667000000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRLabel17: TQRLabel
        Left = 947
        Top = 130
        Width = 52
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2505.604166666667000000
          343.958333333333400000
          137.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FALTAS'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape20: TQRShape
        Left = 909
        Top = 152
        Width = 37
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          2405.062500000000000000
          402.166666666667000000
          97.895833333333300000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRShape21: TQRShape
        Left = 945
        Top = 152
        Width = 34
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          2500.312500000000000000
          402.166666666667000000
          89.958333333333300000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRShape22: TQRShape
        Left = 978
        Top = 152
        Width = 34
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          2587.625000000000000000
          402.166666666667000000
          89.958333333333300000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRLabel19: TQRLabel
        Left = 920
        Top = 156
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2434.166666666667000000
          412.750000000000000000
          42.333333333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'F1'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 954
        Top = 156
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2524.125000000000000000
          412.750000000000000000
          42.333333333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'F2'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel21: TQRLabel
        Left = 987
        Top = 156
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2611.437500000000000000
          412.750000000000000000
          42.333333333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'F3'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape23: TQRShape
        Left = 1011
        Top = 152
        Width = 34
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          2674.937500000000000000
          402.166666666667000000
          89.958333333333300000)
        Brush.Color = 15263976
        Shape = qrsRectangle
      end
      object QRLabel22: TQRLabel
        Left = 1020
        Top = 156
        Width = 16
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          2698.750000000000000000
          412.750000000000000000
          42.333333333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'F4'
        Color = 15263976
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 164
        Top = 8
        Width = 178
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          433.916666666666700000
          21.166666666666670000
          470.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ: 09.481.794/0001-29'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel23: TQRLabel
        Left = 164
        Top = 27
        Width = 166
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          433.916666666666700000
          71.437500000000000000
          439.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Rua: Antonio Dutra, 526'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel24: TQRLabel
        Left = 164
        Top = 46
        Width = 203
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          433.916666666666700000
          121.708333333333300000
          537.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Fones: 3431-1195 / 9802-5117'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRImage1: TQRImage
        Left = 8
        Top = 7
        Width = 147
        Height = 85
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          224.895833333333300000
          21.166666666666670000
          18.520833333333330000
          388.937500000000000000)
        Picture.Data = {
          0A544A504547496D616765EE630000FFD8FFE000104A46494600010101006000
          600000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
          0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
          3D38323C2E333432FFDB0043010909090C0B0C180D0D1832211C213232323232
          3232323232323232323232323232323232323232323232323232323232323232
          32323232323232323232323232FFC0001108017901E903012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F7FA
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A293BD216E680B8EA
          2985C28C938FAD50B8D72CADC90F32E4765E6A6538C776546129FC28D2A4CF38
          AE6E5F185A23E15246FA902A9CDE319189114691FF00BD926B078CA29D9C8E85
          82AED5F94EBC9E68CE2B847F13DD3BE3ED0C33FDC03FC2B66C2DF52BC0249AE2
          68633FED7CC7F0ED5B53AB4AA7C32FCCC2B51AF47E38DBEE3A30696A28211126
          03BB9EECCC49A96AC84145149400B45145001451450014514500145145001451
          4500145145001451450014514500145145001451450014514500145145001451
          4500145145001451450014514500145145001451450014514500145145001451
          450014514500145145001451450014534939EBDAA96A3A945A6C26599FB70BDC
          D2949455D8E3172764B52D4D2A44A59D82A819C9AE6F53F16DBDA9296F876FEF
          1E82B96D67C4D71A8CC551B0838001E07F8D61EF6279249F5AF27119837EED33
          DEC2651F6AA9B37BAF5DDF9F9E53B4F4E78FC871544CAEDF798FE75595B14EDD
          8E7200F7AF39CE52DD9EC428D3869144FB8FA9C1F7AB3A7D95D6A537956B1EEC
          7DE7E8ABF5356345D02E7596DFCA5A83F3487AB7B2D7A2D8D85BD85BAC16F184
          55F4AEDC2E12553DE96C7998DCC2347DC86AFF00233B46F0E5B69CA249144B71
          DE46EDF41DAB6B0A07000FC29554018030294F5EF5EC420A0AC8F9EA952751F3
          4DEA09D2866DB927A0193591ACF886D3458F32B6F948F96153C9FF00015E59E2
          6F1CCD77BBED3722184FDD8633D7EBDCD372496A284253D227A8DD78AB47B466
          592F51987554F988A7E9FE25D2F549C436B73990F4465C13F4AF9EE4F10CCE73
          6F66C47ABB6D1F855FD07C4531D6ED23922314E645F2CAB6431C8C8CFD3351ED
          62DD933A1E12A25CCD1F4629C8A5A6A0C0A756A7285151CD22C48CEEDB1154B1
          63D001D4D2C7209103AB0656E411D08A007D14039A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A2
          8A2800A28A2800A424E6839ED55EEA75B581A791B088324D26ECAE0B5D115F55
          D4E3D32D5A673F363E55F53EFED5E5BAB6B33EA9725DDFE5CFF9FC29FE22D6E6
          D4EF594B9D80E081D00F4FF1F7FA56306FC8D7838CC4BAAF962EC8FADCB72F54
          63ED25AC992838E318F6A70350E69C18FF00F5EB892D6C7AB244C580EBC0EB9A
          E87C37E1C7D59C5CDD2B259AF23B190FA7D2A3F0C78724D5E55BAB952B6487E9
          E61FF0AF4C8A248E208881500C003B57A983C2737BF33C1CCB3154EF4A96EFAF
          60B782282158A24088A301476A94000600C50060521241AF5D2B2B23E6DEAEEC
          326B96F1478B934956B7B42AF758F989E91FFF005EA2F1578B23D3E292DAD245
          F3B69F325CF118EFF8FF002AF0AD77C40FA8C8F1C72325B73B9CFDE93E9FE351
          3A8A2B43AB0F8675197F5BF13CD77732082412C99F9E773C29F6AE5A4BAFDE97
          04CB331FF5B2724FD2ADE9BA45DEB0C121411DB820176FBA3FC4D767A768363A
          6AA958FCD947592419CFD07415E755AE93EE7D0E1F06A0B447111695ABDE8DF1
          DBCEC31C963B6BABF875E17BEBBF1E5A2DDA3A4762BF6B705B3C8E107E27F91A
          DB965F2E367724AAE381C93EC07BF4FA915E93E09F0FB68FA534D74806A176DE
          64FF00ECFA27E03F5CD5E19CAA4B6B232CCA71A147953D59D427DDEB9FAD3A9A
          0607148C4E3835E91F32733F10B554D23C1B7F333056954409FEF39DBFC89FCA
          B9BF871AE5E4762D6F7B2AB59AB948589CBAB67907FD9F4AE6FE356BC6E757B0
          D0E27CA5BA9B99C678DC78507F0E7F1AE73C3DAD3E993C73924DB4AAA264FF00
          67D7EA3FC7DABD3A18753A0EFBB39AB4DC5DD1F492E08E29D5CEF873561756EB
          09943FCBBA36FEFA9ADFF9BD6BCE9C1C1D99B427CCAE3E8A419E734B52585145
          1400514514005145140051451400514514005145140051451400514514005145
          1400514514005145140051451400514514005145140051451400514514005145
          14005145140051451400D63E95C378DF5AF297EC91B64AF07DDBFF00AD5D8DF5
          C0B5B596763C22E7EB5E2FAC5E35E6A5248CD920E33EA7BD79F8FACE10E58F53
          D7C9B0AAB56E796C8A79E7939F7F5A766999C9CD2F15E1AD8FB01F9383EB8ADB
          F0D6832EB77A1997167191E6BFF78FF74566697A6CFABDFA5A5BE771E59BB28E
          E4D7B2699A6DBE9BA7C56B02E1107E24FAD77E0F0DED1DE5B1E366B8FF00ABC7
          D9C3E27F813DBC31C30AC7120545E001DAA503F014A140A0F15EEDADB1F2376D
          DD884E2B99F15788D74D81EDADE45FB415F9DBFE798FF1ABDAF6B2BA45B7CBCC
          EFC22FF535E01E2DF12497B732DAC52E5771F3A4CFDE3E9FCAB2A935147561F0
          EEA4914FC43E203A8CCF0C4E45B2B7CC4F57349A27879EFD96E6F54C76CBD107
          57FA7B549A0E826E0A5E5EA9110E5223FC5F5F6AEC17000038C7A703F0AF2ABD
          7B688FA8C3619410B1469044B1C4AA88A301546314331E4E79FF003FFEBFC282
          692D215D475ED3B4AE82EA4FDE1F440327F3008FC6B929C5CE6A275CE4A9C1CD
          F43ABF087875AEEE63D5AE908B78CEEB746FE23FDF3EC33C57A220C0C74A6C51
          4691AA22854518007000F4A93681DABE828D254E3647C4E27113C44F9E402A96
          AFA8DBE93A65C5F5D38486142EE4FB55A91C44A59982A81924F6AF0DF8ADE351
          AADCFF0061D93E6DA16CCCC0F0EDD40FE5553959050A2EACD24709AE5F4DAC4B
          3EAF37FC7C5CCCDBBD003C81F8640AB71AF971AA7F7401CFB52F872C0DE5B5DC
          928CC5C6C07FBE3FFAD4E652ACCA7A82457A795625558BA7D50F36C27B1E5A91
          D99D978275A789C59173E621F32024F5F55FEB5ECF6372B79691CE9D18648F43
          E95F355ACEF6B7515C4670F1B06CFB0EB5EE5E10D4D6E2208A7E49904C83D0F7
          15AE3A95D7323CAA13E595BB9D68A5A45E94B5E51DA828A28A0028A28A0028A2
          8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A2
          8A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A4
          39A4CE07268039AF1ADF7D974D09D9BE661EC39FE78AF23C93F31EA793F5AEF7
          E22DCFEF5620738403F324FF00415C0E79AF031D3E6AAD763ECB26A2A386E6EA
          C76681B99805E58F000EFEDF5A613CF1D7B67A5767E01D085E5C9D56E1730447
          6C3B87DE7EE7F0ED5850A4EACD44EEC6622387A2EA33ABF08787868DA6EE9D47
          DAE6C3487FBBE8B5D228C52460153F5A780074AFA3841423CA8F83AB5655A6EA
          4DEAC2AADFDEC56168F7131C220CFD4F6AB0C483C74C579778FF00C589123857
          DD14276C6A3FE5A3D394B950E953752491CAF8EBC5934B70F1A30FB44A39E7FD
          5A5727A0E8DF6D75BAB807ECEA72AA7AB9A86C2CA6D6F5279EE18940DBA56FE9
          5D9C4AA912A2AED5518007615E3E27116D11F5781C2282B93AE00C0E07414ECD
          460D389AF39BEE7A761D9AA2F78DA478834CD5C1C240FB4923E519E39AB99AC9
          F11363459480A4EF4E08EBCD6B426E334CCABC14A9B8B3D92CFC6BA6CD0A99B7
          C2E402411B87E0454F3F8BF4C8D7292BCA7D1531FCEBE6A83529608C2C53DDC0
          BFDD8E4F947D01A6DCEA73DCC66392E6EA753D5657F97F11DEBDC78867CC7F66
          EBB9E91E37F8A325C86B0D2D97272ACEA7217DB3DCFE95E568B25C4EAAB97924
          6E3D49A6E771393ED83D3E95D6787749F2105F5C29F318623523951EA7DEB9AB
          D6B4753D2C261143489B7A7DAA69F6915BA8C8400B1F53D4FF0085626A717957
          8C074E6BA1EE6B235C4C491BFF007803FD3FA53C8EB38E2D2EE699CD08CF0525
          DB5FB8CAF6EC47E55E83E04D4D92D61C9F9AD66C7D548FFF005D79F0AE8BC1F7
          022D4E6849E268B81FED03C7F335F6B5A1CD0699F009F53E815FBBC53AAA6973
          7DA34CB797BB2027EBDEADD7CEB56763D14EE828A28A430A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A
          28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280109C531B95
          38EA4629F806992615189E8066901E4DE37BAFB4EA5211D048507FC078AE5BD6
          B535790CF6D14E4E4B4AEC4FD493590CD83E833CFD3FCFF5AF9CC45DD567DF65
          C92C34522DE9F632EA9A95BD8C248799B6938CED5EA5BF015EE36163158D8C56
          B0A058E35000AE33E1DE8A62B57D5654FDE4FF002C5EC80F27F13FD2BBD45C70
          4E6BD5C0D1508733DD9F379D633DAD5F671DA3F98E5181413CF5A2A1BA992DE0
          79A460A883731AEF3C5B74307C5BAD0D3EC1A146DB2CA8727BAAFAFF009F7AF9
          F355BD9BC43AC88A063E529C21ED8EED5D478FFC4725C492421899AE1B0403F7
          133C0FA9AC9D1B4E1636FBDF067947CC3FBA3B015E762EBF2A3E8B2BC1DFDE66
          859DAC7656C904430AA3AFA9F5AB4B518E38F4A766BC594AEEECFA5B59591266
          9D9A8B34E06A49B0FCD54D46CC5FD8496FB8A96C153E84559C8A4A71972BBA14
          95D58E0A6D1EFED98ABDA4840EE8370A4874ABE9DB6A5A484FFB436FF3AEF89C
          71485B231DABABEB92B1CCF0A9BB985A578756D489EEF6C92AF2B18FBABFE26B
          781F734CA326B09CE551DE474429A8EC3F3C8ACDD6466DE13EB9FD0FFF005EB4
          33FCEB3B5938B6B5F7638FCC576E54DAC5C0E4CC97FB24D3ECCC81D2A582E5EC
          EE22B98F878DC37E039FE95167818F4A6C9CC4C2BF437AA3F353E8FF000C4A26
          D06DD97EEF38FA6735B15C87C34BA373E09B424E4A33213F435D7D7CE55569B4
          7A10F85051451599414514500145145001451450014514500145145001451450
          0145145001451450014514500145145001451450014514500145145001451450
          014514500145145001451450025417C48B1B861D446C47E5562ABDE297B49907
          F146C3F4A011E237037E883FD87C554D3EC5F54D4EDAC630499A4DA71D97F88F
          E02B4221E6DA5CDBF392B91F519AE8BE1AE985E7BAD4DD7EE0F2233EFD58FF00
          2AF1A745CB1363EBA863151CBDCD6EB6F53D1ACEDD2DAD6381142A46A1540EC0
          0C55814D4E453F15EC2492B23E45EAEEC69E3F2AE3BC75ACAD9D91B6DFB57697
          94FB7A7F3AEBA7916189A46385452C4FB0AF03F1FEAF2EA17DF64898EFBA932D
          83F754567567CB13A70949D4A891CE58AC9AB6AB2EA7700150D951DB23A7E55B
          EBD39AAD6F12DBC290A0C2A0C558535F3D5AA39B3EF28515469F2A2514EA8F34
          E06B0B1A587D14DCD1BA826C3A972699BA8DD405871E6938A696A4DC4FBFD28B
          0EC3F3499A89E78D5B69910363A1614FCFD7F1AAB35B869AF90ECF7FF3D4566E
          BA4892CA31D9371FC4E6B4002CEAABC9278AC5D5E5F375B9541F9604083EA38F
          E95EBE474DCF16BC8F1F3BAAA9E125E656FA5325384F6C8CD3EA0B9621401EE7
          F215F767E7AB73DD3E14C653C13093FC52BB7E75DC5739E06B4FB1F85AD61C60
          A8C1FAE067F5AE8EBE72B3BD46CF421A45051451599414514500145145001451
          4500145145001451450014514500145145001451450014514500145145001451
          450014514500145145001451450014514500145145001451450014D6C639EFC5
          3A9ADFAD0078B5CA7D83579E23D2395D0FD3247FF5EBD4BC3BA72E99A2DBDBAA
          8048DEDF5639FEB5C7EBDA3F9BE3A8200BFBBBB647FC3F8BFF0041FD6BD19146
          381C566A9AE6E63795593A7ECFA6FF0031CBD29693A521278E6B430B981E2FBF
          FB269063070D31DBF87535E0B1BFDBF5ABBBF63901BCB8FE838AF4CF89DA9344
          AE8ADCC70ED1F535E6FA7C421B48D71D81AF371D52D1B1F4B9161D3939BE85CF
          4A905306314E15E3B3EA592034B9A6519352412669334DCD2669582C3C9A4DD4
          C2C6A196E3632C688D24CE7091A8CB31EC0015718B9688526A2AEC95E55452CC
          4003A92781F5AD0D0BC3DA9F89DC1B4536F659C3DDC8BC11FEC8EF5D0F86FE1D
          4D74D1DFF88384EAB64A703FE067FA7E75EA30411C312C71A2A46A30AAA3000A
          F530D815F1543E731F9CD93A743EF396D3BC05A169D6125BB5A0B979170F3CF8
          66618EC7B7E18AF25456B7967B56EB6F2B444FAE0E2BE83900556FA67EB5E017
          8E1F5FD5993953792018EFF355E3E9C54134464556A4EACF99DEE4D0388166BA
          6E12DE32E73EB8E3F5AE4E02D2869DF3BA57DFCFE95B5E249BC8B1B7D210E66B
          93E64D8EC83B5650E9D302BD9C830CE14DD596E79FC458BF6951528EC2FA0A93
          4AB51A9EBF6F6DD537E5BFDD0413504AFE5C65BBE70335D87C38D1DA690DEB2F
          33B08A2247F0E793FE7D2BDBAF3E4A526CF9CA6AF23DAB4888C3A55BA9182577
          1FC79FEB57A9A8A15028E838A757CF5EE7785145140051451400514514005145
          1400514514005145140051451400514514005145140051451400514514005145
          1400514514005145140051451400514514005145140051451400518A28A00A37
          1A74536A9677A701EDC3A8F70C315717A52E06734B400869AC3BD3BBD21008A0
          0F14F897297D41D4F3BA523F2AE72301500F415D47C4BB731DFA311C1909AE5D
          4F03E95E363EF73ED724B7B0762504629734C069735E7B4CF619203466981A8C
          FD4FD28482C3F34D2D8F4A864B858C819C93C0503249F4C7AD755E1CF006A3AC
          B2DCEAE1ECACBAAC1D257FAFF747E46B6A3879557A2393158DA5868F34DEA606
          9961A86BF762D74B87CC20FEF2663FBB8BDC9FE95EB1E18F03E9FE1F413BFF00
          A4EA047CF70E391ECA3F845741A669565A55A2DB595BC70C43F8507F3F7AB814
          0AF66861634B5EA7C863B34AB8A9593B446AAE09F7A3A138FC68270F8F5ACCD7
          75DB1F0F6992EA1A84C22850703BBB7651EA6BA5BD353CC8C5DEC8CDF1CF8962
          F0BF8767BB2C3ED32031DBA1FE273DF1E83A9AF21D2C456DA5B6AD7C408914C8
          493F7D8FF89AAB7F7BA878FB5B9354D41BECFA740708BBB0A899FBA0FA9FE26E
          DF95676ABA80D66E2382DD766956BC44806DF348EF8F4F4AC238778CAAA0B647
          B54AB2CBB0F294BE2915D6496F6E66D42E7227B83C29FE15EC2A4F5E45033C64
          726AADDCD8C431FDF271C7F2AFACA74E308A8C5688F97A9525566E72DD92DBDB
          4BABEA715941CEF3827FBA3BB57BCF8434A8AD23528B886DD0471FD71CFF009F
          5AE17C15E1C7B0B412C91E6FAE31C7741D87F8FBFD2BD86C2D12D2CA3817F846
          09F53DEBCBC757E7972AD91D34A1CAB52C8A5A00C515E79A8514514005145140
          0514514005145140051451400514514005145140051451400514514005145140
          051451400514514005149DE8E68B80B4537277639A61739E09FCA8DC57B6E4B4
          540F70910CC922A8F5271551F5DD323387D46D81FF00AE82A1CE2B765C61296C
          8D2A2B3A2D674E99B11DFDBB1F4120AB89287E55F23B714D4D3EA1284A3BA25A
          29A09F5A5E7D6A89168A28A0028A2909A00634989427AA93F953C5634F7A17C4
          30C44FC9B0A1FA9AD91D39EB400B46051450070FF117417D4F4869EDD0B4908D
          C547522BC8219300231C15E33EB5F4A3A86C8201C8C608EB5C06BBF0CACF50BC
          7B9B1BB368EFF3188A6E5CFE7915C989C3AA8B43D8CB3337857CB2D8F3106977
          7073F8575A7E14EB7BBE4D46CB6FA9DE0FE58FEB5A567F0923DE0EA3AB4B22F7
          48536FEA735C0B033B9EFBCF70C95D33CEDEEA3560AB9763D1506E24FA5745A4
          781FC43AD85768869F6EDFC73FDFC7B2F5FCF15EADA2F85345D113FD0AC63593
          A79AC3739FF811FE95B7B47A575D2C0C56B33C8C567D52A69495BCCE57C3BE06
          D234122548BED1763FE5E25E587FBBFDDFC3F3AE9C228E360C53B6807FFAF460
          5774525A2478552A4EA3E69BBB140C5212723AD216C773F95717E33F88BA7F85
          51A08CADD6A4C3E5815B84F773FC23DBA9A1BB6E2841CDF2C7736FC49E27D3BC
          31A79BCD425C13C4712FDF94FA28FEBD05786DFEAB73E35BD9B57D6EEE3B7D36
          D5B115BA370A3D0FAE7B9EA7A0AE5F5AF105DEBBA8C97DA9CED34C7A28FBAA3F
          BA0761597717324E429F9631CAA03FAFD69C30D52BBEC8EE53A58357F8A7F91B
          3AEF887FB4116C6C50C1A720C6DC60B818EC3A0F6F6A92C413630673CA76AE79
          0648507193DBB56D2492CEF1D9D946EEC70AA10659ABDBC2D0852872C765D4F2
          313567567CD2D496E6E847B91305CFA76AEBFC21E157899355D463024C6E8227
          1D3FDA3EFE9F9D4FE1BF0525934779A8ED92E47291F558CFFECC7F957A5E8BA4
          7DA585C4E08801C807F88FF85658AC5E9CB4D8A9D1B6ACBBA0696625FB64CA43
          B7DC07A81EBF8D7403A501401C0A5AF24E80A28A2800A28A2800A28A2800A28A
          2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A
          2800A2909E69A58E7AE2801C7AD3249046324E077AC9D5FC4567A3C64CF2664C
          711AF249AF3ED5BC4B7FABB1592431C1DA15E3F3F5AE3C46329D15DD9DD84CBE
          AE21DED64769AAF8CAC34F263849B99BA054200CFB9FF0AE4AFBC5DAADE310B2
          ADBA9FE18C7E99EBFCAB03228CF1ED5E356C756A9BBB23E870F95D0A3ADAEFCC
          9269A49DF74D23C8DEACC4FF003A8F8F4FCA8C123BD276AE4D59E846314BDD40
          707A807EA2AFE9FAD5FE972AB5ADC1507F81FE656FC3FC2B3C9E78CE2933FAD5
          427283BC5933A30A8AD3573D63C3FE208B5BB52DB4473AF0E80E7F11ED5B40E7
          9F7AF22F0D5EBD9F882D1D5B0B2388DFDC1E07EA6BD753A0AFA2C15775A1796E
          8F91CC70AB0D5AD1D98F14B48296BB0E041484E3E98A5A82F1BCBB49A4E85509
          FD28038EBB99A5BD96519C97DCA7E9D2BACD36F56F6CD2407E61C30F435C69EA
          0FE55359DE4B63379911E0FDE53D0D03B1DC5154ACB5282F53E4701FBA1EA2AE
          0F7A040464F3484751D6971CE68DA2810D007A5047B0A7E290804E280117A53A
          93A741552E752B4B51996741EC0E4D032D13CFB554BFD46D34CB592EAFAE63B7
          81065A4908503F3AE4BC45E2CD684653C3DA7C123918F36E64C63E8B8E7F3AF2
          4D5F4BF1CEB57066D4A37B87072B99542AFF00BA01C0FE75B52A2A6EF276264E
          DB1D2F8D7E2FDCCC5ED3C38A6183EEBDE48B866FF701FE66BC8E69A6B895E59A
          46791CEE7666C963EA4F7AE8FF00E108F11CAE0FD8829FF6A551FD6AEDBFC37D
          5E4E669AD2007FDB2D8FC00FEB5DCA9E1E1B6A2F6952D6BDBD0E3318E9F86294
          02ED850598F65E49F615E9B65F0CACA32AF7B7934F8EAB1A8453F8E49AEAF4ED
          074ED2D40B3B28A16ECE172DFF007D1E6896262B444A89E67A0F81753D45D66B
          A5FB1DB9E85C65C8F65FF1C57A4E8FE1FB0D1A3DB6B0FCEDC348DF33B7F87E95
          BF65A6CF7AD889323BBB741FE35D369FA341660338F365C7DE238FC057254C4C
          E7A6C5A8A466697A0993135DA613A843C93F5AE9515554003007414A00A5AE62
          828A28A0028A28A0028A42719E69A1B8EBFA502B8FA2B2B53D72CB4919BBB808
          48C85EE7F0AC4FF8581625FF00E3D6E7667EF6D158CF114A0ECD9D14F0D5AA2B
          C62EC7614565E99AE5A6AF196B597257EF291822B401604E4D6B19292BC5994A
          32836A4ACC928A40734B4C90A28A2800A28A2800A28A2800A28A2800A28A2800
          A28A2800A29AC4EEE0F14D762AA58B600E49A1BB075B048769CE71C571DE21F1
          8ADA992D34FDAF38F95A4232A87DBD4D67F89BC58F7323D9E9F2E221F2C92AFF
          0017D0FA571E3A60578F8CC7DBDCA67BD97E557FDE565F22492592595A591D9E
          46EAEC724FE351E71C52138A3E6775545677638544192C7B002BC8D652B753E8
          972C15BA0B91D78E3AE4E001EF5140350D4E43168F612DDB038F37188C7FC08F
          15D9E8FE003728971AE729F7859AB617FE067BFD07EB5DF5ADA5BDA5BAC36F0A
          45128C2AA2ED007B57AD87CBAFEF553C5C5671183E5A4AE78B4BF0FBC5F3A179
          1EDC13CEC1391F87031FAD72521D4345D49E0BADF1CF0B624899B3C7F23F5AFA
          68A2E4F1C77AF1DF8B16D1CBE28D3522FF005D2C055FE9BB83FA9AEBAD87A71A
          6DA42CBB34AD5EB7B3A8919FBB7004742322929063A0E800FE54B9AF01EE7BC9
          742CE9EA5B53B303AF9E9FFA10AF6B5AF21F0C5B1BBF125A2632A8DE637D0735
          EBEA300F7AF672B8DA1267CC67B24EAC63D90E14B48296BD43C30AA7AA9234CB
          823FB86AE554D490C9A7DC28FF009E64D00717452E3BD2E05031B83BB7292187
          70706B46DB5BBEB71B4B2CABD838FEB59F8A31401BC9E275C624B57CF7DAD9A9
          57C4D6B8F9A29C1FA0FF001AE6C8FC7EB498A00E95BC4D6C0656098FD4015566
          F134CDFEA6DD57DDDB35898F6A31408B53EA57B7430F3903D1381548C79393C9
          3DCD49834A05302231E47233F5A4F2FDAA7229314D3022D94A131ED5262971C6
          4F41D69DC08F6743DEAEE9FA73DECBC0DB10FBEFFD054FA76972DE3876CA423F
          88FF00157510431C1108E350A83A52B8096F6F15BC2228D70ABC62A6C500628A
          900A28A2800A28A2800A28A28018E70DD79C560788FC4D6BA0471467F7B7939C
          43003827DCFA01EB5BB2B040CEC70A0724D784CDA949AFF882FF0058724C6CE6
          2B707B202718FAFF005AE5C5D6F654DB47A396E09626A3E6F8517AEEF27BFB97
          B9B890BC8C49C9E9F80EC2ABF19F7A4CFF00852139AF9A93727767D7C20A11B4
          7446FF00842668BC4B6C1090240CAC0770149AF55ED8F7AF32F035A34FAD35C0
          1C408467DDB8FF001FCEBD317BFD6BDECB949516D9F279CB8BC4D9761EBDFEB4
          B48296BD13CB0A28A2800A28A2800A28A2800A28A2800A28A2800A29AC79EB8A
          69723BF1DE80091C26598E140C93D80AF3AF1478ACDFB359583916D9C3CA0E37
          FD3DA99E2BF151D4247B2B1948B453B649071E611D403E83F5AE4FA0038FC3A7
          FF005ABC6C762DBF720CFA3CB32D4AD56AAF443B20000607B504D2714F82096E
          AE63B7823324B21C2A8EF5E528DDD96E7BEE4A2AEF41F69693DFDD25B5B27992
          B90001DBDCFA0AF4DF0F785ED74541349896F08C1931F77D97D2A6F0DF87A0D1
          EC80203DCB73249EA7D07B56EED02BDEC1E0E34D734B567C9E6198CABBF674DD
          A3F98D029C062908C74A4248C73F5AF411E48D958229627A0CD7876ABA87F6EF
          89EF3552DBA043E45B1F5504FCDF8924D77DE3DD78DAD91D26DA5FF49BB521D9
          4E0C717F11CF627A0AF3B4458D0468BB5540007A579598E234F6713E8F24C2B5
          7AF2561FD381C0A3D3EBCFB534B54B696B35FDE456B029696560AA3B7D4FD3AD
          790A3CCD23E8252518B6DEC76FF0FB4D2239F5271CB7EED33E9D49FF003E95DE
          0E95574CD3E1D3B4F8AD621F2A2804E7AFBD5CC0AFA6C3D254A0A27C2632BBAF
          5A53E803BD2D1456C738532450EA51BA3020D3E908C8A00E1A688C13C9137556
          22995B7AFD932B8BB45CA918931DBDEB138EDD28185145140062803345282452
          0136D18A7134A0F1CD3019834A053F8C53726800C52E28078C9E9EB566D6C6E2
          F0FEEE3C2FF7DB802811580C9C753D80EA6B6B4FD109C4B77903B47FE35A361A
          5C368BBBFD6487AB11FCAAF014008AAA10280001DA9D45140051451400514514
          00514514005148734C662075A00E4FE246B6747F0ACEB113F69BBFF47880FF00
          6B393F80CFE62BCC6CEDC5AD9C5071F2A8CE3D7BD6CF8F3511AC78DA3B546DD6
          FA6C7F363A190F3FE15999FC3DABC3CC6AF34F951F6394E1FD961937BCB5178A
          38069335A3A1698DABEB10DB01FBB07CC90FA28FF1E0579D18733515B9DF56A2
          A7073974477DE07D3BEC7A12CAEBF3DC379B9EF8C7CBFA73F8D74E05361411C4
          102E00E83D29F815F534A0A9C1451F095EABAB51CDEEC052D2138CD3771EBDAB
          431D90FA2A30C73D69D92280B8EA2914E452D030A28A2800A28A2800A29AD9EC
          690920FDEA0571243B4E7B62B82F1A78A0EF7D22C24C1031732838DA3FBA0FA9
          FD3F1AD7F18F890E8D68905B10D7F7191129FE05EEE47A0CF1EA48AF2E03A92C
          5D89DC58F2589EFF005F7AF3B1D89F671E48EECF7329C02A92F6D5168BF11E00
          0A000318E98FF3FE7DE93BD26714672475F7C76FF3FE35E15AFA9F53B6828C96
          0AA0963C281D49F4AF4DF0978746996BF6AB98C1BC90723FB83D0562F827C3DE
          732EAB769F283FB853D0FAB7F857A120AF670185B7EF67BF43E6337C7B95E853
          DBAB1C80007030334EA414B5EA9E1086B07C53E23B5F0D698D753FCD237CB0C6
          3AC8FE9FE27D2B71CF071D71C57887C58BBB97F16C10392228600D08CFDE249C
          91EFC0FCAB3AB2718BB1D980C32C457507B104F3CF737124F72FBE790E643DB3
          E83DBD07F5CD4759F06AF6EEA04A7CB7C739E454A751B5CAAA49E6331C054196
          24F4007A9FD6BE7654EA39DEC7DC28C611B2D916FB8E9CF1FE7D6BD27C17E1C6
          D3E0FB7DDC78BA957088DD635F7F73FCAA97837C2B222AEA5A9DBEC98F30DBB7
          58FDCFBFF2AEF8200318E2BD2C160F95F3CF73E6B35CCBDA27469EDD58A9D3A5
          3A900C74A5AF50F0028A28A0028A28A006488AEA5586411822B9BD4346920669
          2DD4BC5D768EABFE22BA7A4C0A00E0CFEBE9DE8CD75F77A5DADD1DCF1ED6FEF2
          706B365F0E139315C67D9D6819854569B683760FCAD137D1A93FB0AFBFBB1FE2
          F4019D47F9E2B5E3F0F5C1FF0059344A3FD9C935762F0FDBA1CC923C9EDD2803
          9C193C2E4FB0E4D5EB7D22EEE067CBF2D4FF00139FE95D341676F6E31142A9EF
          8E7F3A9B68F4A00CAB4D0EDE0C34B999C7E42B515540C00303A629D81E945021
          314B451400514514005145140051451400514514009597AF6A70E8BA35D6A131
          E2142C07F78F61F89C0AD26CE4E0E38AF31F8A7A91B89B4FD0626E5DFCF9F1FC
          2A0F1FD4FE159D59F241C8E9C250F6F5940E2B4E12BC325DDC1DD3DD3B4AEC7A
          9C9C8AB94C071C01803A0A5CE6BE6272E69B933EF146CAC85CD7A4F81B49FB26
          94D7D201E6DC8CAFB276FF001FC6B83D1B4E6D5757B7B4C128EDFBCDBD428E49
          FD31F8D7B3C70A4712C68B855E001D857A596D1BCBDABE87CFE7989B45505D77
          254EF4EA4518CD2D7B27CD0D638CFD2B0F5DF1143A344AB8F32E5FEE4438FC4F
          A0A83C69E264F0CE8ED70A03DD48764119FE26F53EC3A9AF3492E6E6E9BCDBC9
          CCD3B0F9D8F73EDDB15C18EC57B18DA3BB3D4CBB2EFAC3F693F857E26D5C78BF
          59B862CB7422527811A8C7EA3345BF8BF59B790335C89947256451CFE2056093
          CD01B8C13F85787F58ADCDCCE4CFA3782A1CBCBC88F5FD07564D634E17483073
          875FEE9AD5AE2FE1FA38D36EA4CFCAD3607E4335D90CD7D261AA3A9494A5B9F2
          18CA71A55E508EC98EA281456E73851451400D619CD51D5751B7D234F9AFEE9C
          2430A1663F4F4F527A7E35724C8E7F415E57E3BD786ABABAE956EF9B4B260F3B
          03C3CBCE17F0E0FE3ED5957AAA941C8EAC1619E26B282DBA983797F71ABEA136
          A376312CC7E54FF9E69D93F5E7D493DAA2A693E9C7B7A500D7CD4E4EA49C99F7
          54E9A841423B2149FF00EB56BF86F466D6F53588822DD3E7958761D87E3CD64A
          24934A9144A5A473B557D49FF3FCABD83C37A347A3E9290003CE6E656F56FF00
          0AE8C161FDACF5D91E6E698CFABD2E58FC4CD5861486258E35088A000A3B0A90
          0C1A5029715F42B4563E34414B4514C06B0EF589AEF8634BF11C2B1EA36DBCAF
          DC9172197E8456ED26D04E7149ABEE384A5097345D99E6CFF07F48127CB7F7A1
          3D32A7FF0065AE9341F04E87A04825B4B4DD700604D29DCC3D71D87E15D2E050
          140A954E28E8A98CC4548F2CA6EC354019FAD3A8C0071499E7AD5B472A1C28A6
          E68C9C1EB40EE3A8A8D5CFAFE629771A016BB0FA299B8E719A5C93D09A007514
          8A72296800C5181451400628C521EB4B40062930339A424D3416CF24D02BA24A
          29809FC28DDEFF00A5035A8FA298189E940273D680B8FA29052D001451450014
          521A280168A4CD21247A9A007514CDE73FFD6A5CD0174457322431BCD236D445
          2CC4F0001D4D7824B7EFADEB77FAD499C4F26D841ED18FBBFA57A4FC4DD64D8F
          874D8C27FD26FC881467F84FDE3F971F8D79B411082DE3897A2A815E5E6356CB
          90FA6C8B0F64EB4BD3E44BD38A3BFF009FC693A558B0B39351D420B38CFCD330
          1F45FE23F9579318F3348F7A72508B9BE877BF0FF48F2AC9F52947EF263B63E3
          A20FF1AED947CB515A5B476D6B1C31AED445DA00ED56315F49469FB38289F058
          9ACEBD575180A4271F951DE93BD6C6078B7C5EBB91BC4F6306E2121B70E07B96
          393FF8E8ACFB4BA8EEEDA39A22082A32A3A8F6AF45F1F782BFE1288239AD5963
          BF814842DF75C7F749AF2A93C17E2CB09085D2EE73FDE858107F235E5E330DED
          5DCFACCB71743EAEA0DA4D1AD9E7FF00AC6A7B1B0B9D4AE96DED6367909E78E1
          47A9FF003CD51D37C25E31BE94466096DA3EF25C10001F4EA7F0AF5DF0C786A0
          F0FE9DE4EF69AE1F99A67EAE7FA0F6AE6A3974A52BCDE8563732A7423FBB7791
          7F47D362D2F4D86D23E446304FA9EE6AF8148AA00E053ABDB8C545248F92949C
          9F34B70A28A2A8414521CFAD46EC4746A04D985E32D7C787B439AE579B893F75
          6EBFDE91B81F975AF1EB58CC300576DF2312D231FE263D4D6CF8D3593AEF8B5E
          056CD9E9876281FC521EA7F0E9F85657D6BC4C7D5E79F2AD91F6794E13D851E7
          7BC8527347AD266A4B7B796F2EA2B6846E92675451EFEB5C0936EC7A7297245B
          3AFF000168C6E2ECEAB327EEE2F96207BB773F8715E90AB8079AA9A569D0E9DA
          7476B1A90A831C9EBEFF008D5EDA2BE8B0D4552A7CA7C2E3710F1159CFFAB001
          8A5A318A2BA0E40A28A2800A28A2800A293BD2138A0053D6984E0D36490202CC
          D8006493D07B9AE175FF0018BBBB5AE9A42A8F95A73DFF00DDAC2BE221463793
          37C3E1AA6227CB04753A8EBD63A5A1FB44E3CCC711A0DCC7F0EDF8D72D79E3D9
          DC95B2B5541D9A43B8FE43FC6B90773239777676272598E4FE34D2474ED5E256
          CC2AC9FBBA23E8F0F93D1A6BDFF799B7278B35B909FF004DF2FF00DD403F9D42
          3C4BACA1CFF684DF8ED3FD2B2734DCE2B99D7AAF5E6677AC1D04ADC8BEE3A4B6
          F1BEAF030F30C3703D19704FE22BA8D27C6167A948B04BFE8D39E36B91827D8D
          799EECF5A42DC819E3DFB56F471D5A9BD5DD1CB5F2AA1515E2ACCF738CE569D5
          C3F82FC452DD6ED3AEA526555DD13B7F101D4576AAC48E73F8D7BD46B2AB0524
          7CBE2284B0F51D39741F453734B9ADAE602D2138EF4D66C1EB5CA6BFE318AC59
          ADACB135C0E19BF813EBEB5955AD0A71BC9D8D6850A95E7CB0573A4BBBDB7B18
          CCB733A4483BB9C572B7DE3DB68F72D940D31ECEFF002A9FA5711757B737D319
          AEA7795C9FE23D3F0E950E7BF7F5AF16BE6536ED4F43E870F92C22B9AABBFE47
          4171E33D6653F24B1420F644FF001AA6FE24D6189CEA137E181FD2B273CF5A09
          1C715C6F115A4F5933D2860E8474505F71B30F8AB588240DF6C3263F8645073F
          9735D7681E2F4D4E616B711886E88C8C1F95F1E95E6C4F0476F4A549248A4592
          26DAE87729F435B50C5D5A72D5DD186272CA3560ECACCF7243919E7F1A7551D2
          2EFEDFA4DB5D779630C7D8E2AF57D245F324CF8F945C5B8BE8145213CD34B919
          EB4C429CE4FA62A0B8BA8AD636926902228C92C7005607887C5F6FA3030C58B8
          BAC67629E17FDE3DABCDF54D66FB579B7DECDBC03958C70ABF41FD6B8B118D85
          2D16ACF4F079555C4FBD2D11DDEA1F10AC20665B389EE9870187CA9F99EB5CDD
          E78EF59B86FDD4915BAFA2264FE66B98279CD19AF32A62EACFAD8FA2A194E1A9
          2F86EFCCD8FF0084A75CDC586A528FFBE7FC2AF59F8EF5BB561E6BC7729DC3AE
          0FE0462B982693AF6FAF15946BD54EEA4744B03879AE59457DC5EF12EAD2F88F
          C4A978F198ED6DA20B0AB1E49CE493EF9FE42A9E69A4D21353526EA4AF237A14
          614A0A115648713C8AEFBE1EE9395975691786FDDC39F4EE7FCFA57076F04B77
          7315B42BBA59182A8F73C57B8695A7C7A76996F691FDD8936E7D4F73F8F5AEDC
          BE8F34B99F43C7CF313ECE92A51DE5F91753818EF9A752018A2BDA3E4C0D4371
          711DBC6649645440324B1C0A6DE5D45676EF713C82386352CEC7A003BD793EBD
          E2B93C478F2C347620E515BAC83B135CD89C42A10E67B9D982C14F153B2DBB9D
          CBF8DF42594A9B9660382EB13115B365A85A6A50F9D6B32CA9EC6BC4F27D79AD
          5F0E6A5369BADDB346E4472C8B1C8BD88271FD7F4AF3E966551CAD35A1EBE232
          5846939526EEBB9EC2AAADD40F4A78000E2923E413EA69F8AF67D0F9BB08BD29
          68C628A061451450035873587E2DD69740F0EDDDF123CC54DB103DDCF0A3F335
          B6E483D6BC9BE2BEA26EB54D37448CE55479F2807B93819FC33F9D675A7CB072
          3AF0187F6F888C1EC723A7C4D0DA29762D2B92EEC7A927D6ACFD29A4F271D28C
          9AF9B97BCEECFBC4ACAC2938AECFE1F697F68BF9B5275CA403CB8FFDE2327F4F
          E75C5126BD97C2B6034FF0E59C5B712326F7FAB73FE15D781A4A756EFA1E4E73
          5DD2C3F2ADE5A1BA83008A75354633F5A757BA7C6A0A28A281851451400514C2
          D87C64F4A14FB934EC2B8E3D6A2965112177215546493C01F8D123EDC9CE0019
          AF37F19F88DB51BAFECBB4909B48B9B8914FFAC6FEEFBA8E33EB9AC2BD68D28F
          333A70B859E26A7243E6C5F12F8A9B54636D64E56CC70CE3832FD3DB35CCE793
          CF3ED4C040E981F4A37739EBED5F335AA4AB4EF23EC70F878508724361D9FF00
          26992CC90AEE95D507A93576C344D57582069F08299C35CCA36C69EE3BB7D056
          FDB7C25B171BF54D46EEE65EFB4845FC0609FD6BA70F81A95757B1956CC70F45
          DA4F5F23873AD582920DC038F45356629E2B840F148AEA7B8AE9759F8496BF67
          66D26EE649946552760CAE7D33804579A5A34FA6EAA6095191D5FCB9633D8D6B
          5702A0AE8DB0B8CA38AFE1B3A9CD2669B9C0C5266BCFB1D562E69B74D6BAADAC
          EA48D92A648F42706BDAA3FBA2BC32D55A5BC8235EAF22AFEA2BDCE21F20F4AF
          672B6F9647CCE7C973C1FA8FE94C772B8E70319348E489383DBD2B80F1878A4C
          D349A4E9F290919DB73321C64FF701FE7F5AEFAD555183933C8C361A7889F244
          9BC53E2A6791AC34E97E403134ABD7E8B5C5679E7AF5E4E69B9E07B7E9499E95
          F375EB4AB4B9A47D8E1B090C3C3960BFE08EDC064FFF005AABB4D7534A6DF4FB
          2B8BCB91D56242C17EB81C7E75D4785BC3275995AE6EB70B34381B4E0B9EE33D
          71D2BD22D34FB5B0B7482D218E1857A222802BB70980F69EF54387199A428CFD
          9C15D9E1773E1DF19884CF2D84E910E488D93207D0126B2749BFBC6BE58A5779
          15810C1C7231C771EB9AFA22EE782D227927942201B8B31C002BC4248E29357B
          FD415029B9959D00E8AA4F1FE35BE2A9D2A50B2DCBCB31F5714DA9C6D626CFF9
          14848E7278C5349E78AB1A7D94BA9EA1059C209695B048FE15EA4FE42BC85072
          6A2B73D59C9422E72E87AC7845193C2F63BFA94CFE649ADBAAF6B0ADB5AC50A0
          DAA88140FA0C53D99837078FA57D5535CB048F80AB3E7A8E5DD8AED83D71C570
          DE2CF189B767D3F4C70671C49328C84FA7BD43E30F1815964D334E932E3E59E6
          5FE0FF00647BFAD701907AF3CF5EB9AF3B198B6BDC81EF6579573AF6F5969D10
          F662EE5D999998E4B31E4D37E9D2938E8050A1DDD238D1A491CE151549663E80
          0EA7FCF15E524DBB2D59F4DA456BB20279EA3F3AA92EA30AC9E5C4AD3C9FDC8C
          64D771A47C39B9D402CDADCAD0C079FB2C2DC9FF0079BFA0FCEBD034BD074AD2
          220B61630C0071941C9FA9EA6BD1A397B7AC99E36273AA34DB8D3576788C3A1F
          8AB5042F6DA44F1C7FC25D4213FF007D7F85672DADF5BEAF25A5EC84496E7F78
          A1C30CE3A715EF9E22D5A2D0B43BBD424C6218C9553FC4DD147E248AF0BB6F31
          91E798E679D8C9213EA7B556269D3A314A2B52F2CC656C5CA529AB2458273CD0
          7DBAF6A6E79A1773BAA282CCC40551D49CF1FE1F8D79C95F43D97A23B5F87BA5
          7DA2FE6D49D7296FF2467B162327F21FCEBD357851CE6B2BC35A447A4E836D6B
          8FDE05DD2107AB9E4FF9F6AD8DA3D2BE830D4FD9D34BA9F0598621E2310E7D36
          5E8029A4E06697A1AAD7F770D8D9CD7370E1218A367763D80E6B7B9C4973348F
          3DF8A1AB34D25A787E06C79E3CEB9C1E9183C03F53FCAB8F015400A3000C003D
          2A1FB74BABEA179ABCF9F32EA4CA29FE14FE11F95499C71E95F3D8CA9ED2A792
          3EE70186542828F57B8E27B0AD8F0BE9AFA9EB90A804C7011339F4DA781F9D62
          161EB8F73D2BD5FC13A39D33454925522E2E0F98F9EA06381F97EB461293A951
          19E698AFABD06D6EF43A68B85A7D3546053ABE84F8A0A2909E69BB8FBD02BA1F
          452039EF9A5A064726064F7C57CFFAA5E9D57C69A9DEE72A921443ECBC0FE55E
          E5AF5E1D3F44BDBC071E440EFF00929AF9EB4753F6796427E66602B871D3B42C
          7D0E414AF29547D0D2CD19A4CD266BC53EAAC5DD2ED85F6AD696B8C89665523D
          B3CFE95EE88A11703A018AF1CF05C6B278B6C77745DEDF8ED35ECAA3BFB57AF9
          746D0723E4B3F9DEBC61D90F539CD2D2018A5AF44F050514525002D1499A696E
          7AFE1400ADD7F0AA7A86A16DA6DABDC5D4C91468392E7158BE23F18D96868630
          DE7DDB0F9624EDEEC7B7F3AF2AD5F5ABED6EEBCFBD97760FCB181854FA0FF27F
          90E5AF8A8D3565B9EAE032AAB897CD2D226FF88BC7175AB936961BADAD89C163
          C3B8FE82B123511A051DBBD53B45CC85BFBBCD5BCD7875EACAA4AF23EAE9E1A9
          E1E1ECE92B21D9AD2D034A6D6B534B7FF964BF3CA7D14565135E95E02B010E89
          F6B23F7972E4E7FD91C01FA1A784A1ED6A59ECB539332C43A187725BBD0EA6DA
          DA2B681628A30A8A3002F18A97033D314AABC7FF005E9702BE9169A23E29B6DD
          DB1854139EA6BC13E23DA8B5F1DCDB4604A22978F53C1FE55EF8E0761CE335E1
          BF10985DFC46318E443146AC7E833FD6B9F14D28367AF91B7F59B7932BE4D266
          985FAF349B8D7CE9F61637BC27646FBC496CBFC311F35BF0E9FAE2BD83A20C1E
          00AF19F0EF883FB06F2498DB8996450ADC9040F63D2BA9B8F891079256D2C656
          94F43230007D715EB60AB52A74DA6F53E6F35C2626BE2138474353C73E236D17
          4C5B7B66FF008985E7EEE0FF00647763F41FAD798C48B144A8A4903A96EA49EA
          4FB93535FEA973AD6A06FAECAB49B76A803851E83F3A80B93D4D71E3313EDA56
          5B1E965F81FAAD3B3F8BA8F26A7B1B39752BE86D21E5E538CFF74773F967F2AA
          9B8FF9EF5D9F82D2D74FB5B8D66F2558932238CBF5C77C0EF9E9F856187A4A75
          1266D8CACE851728EFD0EF2C2CE2B1B28AD615DA88A00C565EB9E29B1D154A96
          F3AE4FDD8633DFDFD2B92D6BC7771745ADF4D0D0C278F34E3737D3B0AE41DCBB
          1762599B92C4E777F9F7AF4EB639457252478784C9A751FB4C47DDD4D2D5F5CB
          CD6AE3CCBA71B14FC912FDC5FC3BD6713FE7D699BB8EB48A5E49D20891E49E43
          88E28C6598FD3FAF41DEBCB973D596BAB3E8E14E9D08D92B244A8AD2CA91468C
          F239C2AA8C935E9FE13F0C9D1E0FB4DC006F65186C7441E82A2F097847FB2D56
          F6FB6BDF30E154FCB10F4F73EFF9575E14638E95EC60F07ECFF793DCF98CCF33
          F6AFD952F846F2377F5AE47C73E283A359AD95A303A95D82A83FE79A7F13FE03
          A7B915D4DDCD0DAC12DC4EE1228D0BBB1E800193FCABC1EEF54935DD5EEF5897
          20CEF8854F548C741FCF35BE2AAFB3869D4C329C12C455BCBE18FF00561AA028
          DB9271DC9E4FB9F7A09E78A6E71C0A393FE7BD782EEDDD9F6C95925D09618A5B
          89D218519E59182A28FE23E95EB7E19F0B5AE896C8EF1AC97CCBFBC988E47B0F
          415CF7C3CD116457D6255C9DC638323A0E32DFCC7E15E881475E6BD6C0D0B2F6
          8F73E4F39C7CAA4FD8C1D92DC368CE71CD2364700E29DD2B27C45ACC3A168F3D
          FCD83B170899E5DCF0AA3EA6BD06ECAE7851839C9462B5679F7C4DD5FF00B435
          4B6D1226CC30627B9C77639D8BFD7F1AE4377FF5E9BE64D3CF35D5C36EB99DCC
          929F73CE07B0ED4578589AAEA4EEB63EFF000386FABD050EA3B39AE93C0DA5FF
          0068F8852675CC56A048D9E85B3F28FEBF857339C727A77AF5FF000369034EF0
          EC6F22E27B8FDEC99EA32381F955E0E973D44DF439F37C4AA187696EF4FF0033
          A94FBB4EA68E09A5C915EE1F0C86B75EB5E79F14B552BA5DBE890BE26BD7CC83
          B8897927F9577D73324113CB23054452CC49E001D6BC2351D55BC41AF5DEAEE7
          31B9F2ADC118C460F5FC7AD72E2AAFB3A6D2DD9EB65186F6D5F99ED1FCC64604
          71AA28C051814134DCFAD2123239C0EE4D783B9F696367C31A59D635D8202330
          A1F325CF4DA3B7E2702BD9917017D076AE5FC09A32D868AB752AE27BAC4873FC
          2BFC23FAFE35D6850057BB82A3ECE17EACF89CDB15EDF10EDB2D0074A5A69E33
          827A534BE0F5E319AEB3CC158E0D44ACBE66370CFD6B96F17F8B61D1E192D6DA
          556BF65C607FCB31EA6BCC06A77A9782F3ED537DA14EEDECE707FA63DAB92AE3
          234E5CA8F570794D6C453751BE55D3CCF7E8CE41FAFAD3AAAE9B706EF4DB6B92
          30658D5F1E9900D5AAEA4EEAE79725CAEC729F11E5F2BC0BA9F38DC8ABF9B015
          E29A51FF004427FDB35ECDF13519FC0D7DB7B18C9FA075AF16D2581B775CF460
          7F3AF3F1FB1F57905BD8CBD4D0268C9A4A335E4D8FA235FC33762CFC49633310
          17CCD87FE04315EDD1B1201F519AF9E73839DC471D4751EF5EABE12F18DB6A36
          915ADF4E90DFA00BF31C093D083D0FD2BD3C055514E0CF98CFB0739B55A0AF6D
          CED41CD2D42B203F75B34BE681925B8AF52E8F98F22434D271C93C564EA5E26D
          274B4CDD5F46ADD917E663F80AE2758F89734998B4AB6318E9E74C393F45FF00
          1AC675E10DD9D987CBF11887EE474EE7A0DF6A569A75BB4F773A4318EEE719FA
          7AD79B7887E21DC5E178348060888C19D87CCC3DB3D07E46B8EBBBEBBD42733D
          E5CC93CA7A963D3DB1D05419AF3AB63253D21B1F4D82C8E952F7EAFBCFF0159D
          9D8BB3B3331C9663924D19F5A6E690B639ED8E7DAB8EDDF53DE4922F5B710E7D
          4D4B926A288810A807231D69DBB1584AF739E4AEC7939E3DABD8BC26A17C2F61
          8EF1035E33BBD7F1F7AF58F035F2DCF86A08C365A0CC6C3D3078FD08AF432E76
          AAD791E167F17EC22D6D73A85E0629D4C538EF4D32E09F9801EB5ED7A9F29A6C
          32EEE23B58249E56091C685998F40077AF007B93A9EA97BAB48087BB909553D5
          53A0FD05779F107C44B7319D22D66578DB9B92A7D0F099F53DEB84240E074CF6
          AF271D5EFEE44FABC9304E107564B7D8713499A66EC1C554B9BF4B675523793D
          403D2BCE506F63E82D62E7079EF4707A8CF35563BE8251F24ABF43C52BDDC083
          E6957AFAE6AB924164CBF11CC409E69D55AD2E167B7DE8780C462A726B392B3D
          48685DDFCF34AD23BA22B31654FBA09E07D2A3CD41717715B60484966E1540E4
          9F6A71527A207156D4B193823B1E0D472CC90A9691D547BD5FD33C31E24D74A1
          B6B2FB15B3FF00CB7B9E0E3FDDEA7F4AEFF41F86FA5696C9717BBB50BC5E43CE
          32AA7FD95E82BB28E02537EF6879B8ACD70D434DD9C1E89E1FD5FC44E0DAC26D
          6D33F35D4E84647FB0BFC5F5E95EA9E1EF0A69BA043FB88CCB70787B893976FC
          7B0F61815B2AAA830B850070052BBAC60B1202F524F6AF52961E14B53E671799
          56C4BB6CBB1201ED4C7708B9C802B97D5FC7BA569C1E3865FB5CE3A245D01F73
          FF00EBAF3DD6BC5FAAEB21A3965F26DC9FF5509C647A13D4D4D5C5C29ECEECAC
          265388C43DACBCCE9BE21F8861BAD2A4D1EC6E95A695809CA9CED40791F52703
          1E86BCFE3511C4B1AFDD51C7BD314E300703D3D29F9E4D7955EB4AABBB3EBF03
          828E129A821D9A02B48C234FBCC401F53C5309AD3F0EC22E3C49A721E9E783F9
          73FD2B182BC9237AD2E5A7293ECCF68D22C534ED2ADED50711A007DCF73F9E6A
          F0151A1E3A9A1E658D0BB300A3A93DABE912E5563F38949CE57DDB095B602720
          0032735E37E34F10FF006F6AC2185B7585A92B1E3A48FD0B7D074FCEB77C69E3
          38EE61974CD2E6DE186D9A55E303B853DCD79F03E87007403A579B8BC4DFDC81
          F4F92E58D3F6F557A0E24E7AFE3EB49BA9A4E28CF19AF3AD63E9EDA1AFE1CD3B
          FB5B5EB5B52BBA3DDE64BEC8BC9FE9F9D7B922055000C01C62B81F867A5A258D
          C6A4F8F3257F2D7D947FF5FF009577C4F1904D7B182A5C90E6EE7C3E7788F6B8
          8705B4741F8A648DB4673800649354750D5AD74A80DC5E5C24518FEF753EC077
          35E5FE26F1DDDEAFBED6C8B5B599E19B38771F874AD6AD68D25E67360F2EAF8B
          95A2B4EE6C78DFC5F05CDBCDA458379ACE364D2A9E141EA01EF5C18011555785
          5181F85578802E38E16A626BC5C4559557A9F6984C153C2D3E487F4C7E78AD0D
          0B4E6D5B5AB5B3EA8CE0BFB28E4FF2C5666EAEDBE1A40926A97B3B0C98E2083F
          E044FF00F13461E9F3D4489C7D7F638794D6F63D3E14548C2A8C28E00A93A545
          1FCA0D366B848519E460A8064B1E00FA9AFA1D8FCFD6AEC891F39E3D2B92F15F
          8BE1D1626B6B6225BF71855EC9EEDFE1595E26F882AA1AD34575790F0D738F95
          7D97FBC7DFA0AF38791A590CB239791892598E49CF5CD79F89C5A4B9627D0E5B
          933A8D55AEACBB771F2CB24F334D2C85E472599CFF00113D6AC697A7CBABEA50
          5940A599DBE63D917B9350D9595CEA5791DADAC6659E43C0CFF3F41EF5EC5E18
          F0BDB68163C624BA930659BD7D87A0AE4C3E1DD597333D7CCB1F4F094F963F13
          D91BF6B12C16E9127DC40157E98A9A9AAA146074A757B495B43E1DB6F5662F8A
          B4F3AA786F50B351979606DA3DC723F5C57CE9A6CDE54FB5BA3F073D8D7D4320
          25B1DB15F3E78F7409340F124ACA9B6D6ED8CB0B0E99EACBF87F515CD89A7CD1
          3E8321C428CE54DF5D88B77AD19AA769742740AF8120ED9EB56B22BC694795D8
          FAF4D357026827231DA90D267142560B27A17EDF59D4ED176C1A8DD46A3A0129
          207E06967D7356B94D93EA572EBE9E611FCAB389A4ABE79DAD733786A2DF338A
          BFA0F279CE727D4F34D38EF499C5213526CA365A0E24FA9A33EB51BC8A832CC0
          01EA715A3A1E83AAF8925034FB72B00386B9994841F4EEC7E9570A7293B24675
          ABD3A51729BD0A20979123447791CED44419663D80153788F43BFD16C6CA4BC2
          237BB0DFB9C64A631C123BF3FA57B1786BC17A7787D7CE5CDC5F1E1AE64EBEE1
          47451F4AC5F8B5A53DD786A2BE8D726CA60EFF00EE1E09FC38FC2BD08611462D
          CB73E7659DFB6C4C69D3D2173CEACE40F650B0EEA2A5CD63E937414340F819E5
          7EB5AA4E09AF2AAC39647D02B3149E08F5AD1D1B5CBCD12ECCF6CE36BF0F1B74
          6FF0ACBCD2678A51BC5F3226A528548F24D5D1E85FF0B3984401D2CF987A9330
          03F9560EADE34D5753468BCC5B685B8DB170C47D6B99CE2937715BCB11566ACD
          9C74B2AC2D2973463AF98FE9D3EA3DA901C0C0E7D0530B6075C01DFD2B5BC3BA
          05D788AFBCB87F776C8479F3E3851E83D58F6F4EF59C29CA52B2D4ECAB561460
          E737A225F0F787EE3C417C2350CB68A7F7D28E98F41EFF00CABB8D63E18E87AA
          A8683CCB3B855037C38E71EA0D759A5E9569A5D825ADAC5B224E319E4FD7DEAE
          F96BE9FAD7B187C3469C75DCF8AC666B56B56E7A6F9523C887C1B95A403FB657
          677FF47E7F9D3FC43F0EB4ED0FC1B7B716C649EF220AE667C74046EC01C7439A
          F59DAA09C0C77AABA85AA5E594F6F2AEE8E58D9187B11835ABA51B688859A626
          528F3CB43E72D1E6C1921E727E65C9AD4DDC562EA16771A1EB93D9CAA565B790
          AFFBCBD88FA8C1AD48A659E31221CA9FD2BC5C4537195CFB6A328CE2A4BA92E6
          AEE91A9FF64EA51DE7D9E29F6F1B245C91FEE9EC6B3B711499C8ACA378CB991A
          4E946A45C24B467AB5B7C45D19D034E9730C9DD4C7B80FC4536E3E25E8F18FDD
          457129F64DBFCCD79513C629031C7535D9F5DAB63C8FEC1C2DFA9DEDF7C4EB87
          1B6C6C638DBFBF33EEC7FC056B94D4FC41A9EACC4DE5E3BA67EE2FCA9F90FEB5
          9858918C9A4CE78EFED58CEB549EECEFA196E1E8EB087CC786C0FE94DCF6A85E
          E1233B4925BB2A8DC4FE15D5F87FC03A9EAE7CED48BE9F66704478FDF3FD41FB
          A3EBCD14E84A7B22F138BA3868F35491CBFDA2313A46482CCD8C039A9CF5EB55
          FC4FA747A0F8B2EAD2DD4A4503A98C139382077EF528604023A1E94AAD2E4D0D
          29558D68A92D98ECD4D67792D85EC3790FDF85B70C8E2AB13CD2679CF7ACD5D6
          A8D1C2324D3D99DFB7C50B9F24AA69C9E67F78C9915CE6AFE2AD57592527B831
          C3FF003CA2F947E3DCD620A09F4E4FA56D3AF525A367151CBB0B465CD082B8A3
          0063B0E82A2798472A4407CCC7A7A7BD6D787341B8F116A06188ECB78C8334D8
          E147A0F563589E22B51A578BAF2D973E5C336D4C9CE010288516D7333678983A
          AE8DFDE5A9213CFD28CFD7F0A4CFA74A6E6B3B1D564D6A771E0CF18DA689A7CB
          637CAE10C85E27552DD7A838E7FF00D757753F89C594A69568431E04B3FF0045
          1C9FD2BCEB3484F18ED5BC7115147951E64F27C2CEABAB3576CB97FA95EEA93F
          9F7D70F349FED1E07D00E2AA6EC7A0A6E7AD6CF87BC337DE23977403CAB44E5E
          E187CBF451FC47A567184AA3EE774E7470D4EEECA28CA8586E2BDC8E953122B1
          ECE468EFC8739DC4AF35ABD38CD455872BD4719F3FBC2935B1E1DF10DC787AED
          E68A259924003C64E338E98358B4134424E12BC45568C2AC1C27AA67A0CDF146
          4F2B6C1A62ABFAC93679FA01FD6B94D5BC49AA6B6D8BCB9FDD76863F9547E5D7
          F1AC8DC7AE4E69A5B240F5AD255AA4959B3930F96E1683E6843F51DC0EC3E956
          2C6CAE752BD8ED6D10CB3C8703BE3DD8FA7BD3B49D26FB5CBDFB35845BB1FEB2
          527F7710F563FD3A9F6AF66F0D785ECBC3F641224DF70D8F3666FBCE7FA0F6AD
          30F85751DE5B186639A53C2AE58EB3FC887C2DE16B5F0FDA631E75D38FDECC47
          5F61ED5D100003C77A72A81D052E2BD88C541591F1156ACEACDCEA3BB6029680
          31453206B0CD64788340B2F10E9CF6579196079475FBC8DD8835B18CD1B467A5
          0D5D598E329424A517667CDDE22F0A6ABE19B922E2167B653F25CC6B9561DB3F
          DDFC78ACF875075004C370F55EB5F4DCB0C52068E48C3AB0F9811906B8DD63E1
          8787F517692085AC653CE6DCE013FEE9E2B92A6154B63E97099F24AD595BCCF2
          14BB89FA4807D78A7F98A7A3AFE75D95D7C1CBADC4DA6AD1B0F49A323F5154DB
          E106BA0FCB776247FBCDFF00C4D72BC233D58E75867BC8E67701DC7E74D69A35
          EB220F4F987F2EB5D7C1F07B5463FE91AA5B46BFEC2339FE95D069FF0008F47B
          721AF6EAEAE8F75DC114FE039FD688E0E4C9A99EE160B7BFA1E52D7A85B6C6AF
          237A2A935BDA4F83BC4BAD95686CFEC9037FCB5B8F978F61C93F90AF68D2BC37
          A3E90B8B1D3E0808E372A7CC7EA7A9AD60A076AE9860E2B73C8C471054969455
          8F3FD0FE1869562526D4E46D42E579024FF560FF00BBFE35DDC30470A2C7122C
          68830AAA3000F6152E050140AEA8C147448F0EBE22AD77CD56571B8A86EA08EE
          609209915E2914AB29190477FE75630051B41ED55D2C62AE9DCF9CFC5BE14BBF
          0BEA4DF23358BB1304E0718F463D88FF000ACFB6D4FE50931E83EF0AFA4AF6CA
          DAF6DE4B7B9812585C6191C641AF39D5FE11D9CF2349A4DEBDB13D22906F51F8
          F5AE3AD86E6D523E9B059E439792B68FB9C0ACC8E32AEA7F1A52DEF5B2FF0009
          BC448E424962C33F784AC3FA55887E126BD29FDF5F59C63D9D98FF00215C7F54
          95CF5DE6F854AFCE8E6DA440092EBF9D44B74B34CB15B23DC4AC70B1C2A5893E
          9FE735E8DA7FC20B089836A57D2DCFAA2011A9FC7935DD691E1ED2B468F65859
          450F182CA3E623D09EA6B6860BF98E0C4710538AB5257679AF873E1E5FEA256E
          B5A2D676E0E45BC67F78E3DCF6AF54B2B1B5D3AD23B5B381208221B52345C015
          6828A5DA2BBA9D28D35647CE62F1B5B152BD47F2113A1E3BD3A803145687209F
          C5484034EC739A31401C0FC44F050D7AD45FD8C606A302F007FCB65FEEFD7D2B
          C59259EC2768D919194E1E27041FA63AE6BEA52A0D735E24F05693E2342D7109
          8AE47DD9E23B5FF1F5FC6B9EAD153D8F6B2ECD5D05ECAA6B1EFD8F108AF6297F
          8B69F46A9778EC47E62BA7BCF843A9A484595F5BCC83A094156FD323F1AA6BF0
          A3C485B1BACD47FD753FE15C0F08FA1F470CDF0CD5DCCC3DFEE3F3A634F1A1E6
          44FA66BAEB6F841A939FF4AD56DE31E912B39FE95D2E99F09F42B4647BC69AF5
          87691F6AFE42AE38293DCCAA67B8682F75DD9E511DC3DCC822B4826B8918F0B1
          A127F4CD757A37C3AD7B560B25F38D36D8F2548CCA47D3B7E35EC1A768FA7697
          098AC6CE18133C88D319FAFAD5DDA2BA69E1231DCF1B139FD6A8B9692B1CDE81
          E0BD17400AD6F6C24B91D6E25F99F3DF1E9F85743E5AE36EC017D074A78000C0
          146D15D4924AC8F0EA549D59734DDCF20F8B7E1E956E61D76042D16CF2AE481F
          771F75BFA1FA579EDA5F08C79528C2FF00090735F4D5CDBC57113433461E3718
          65619047B8AF33D6FE11C13CCD2E8F782D831CF9332EE51F439CE2B96BE1F9F5
          3DFCB33785287B2AAF6D8E056446E8CA7E869770F518FAD6D9F84FE2356C2359
          B0FEF090807F4AD0B2F841A948DFE9FA9C31277F24173FAE0571AC1C8F6E59C6
          162AFCC8E3E4B98A3CE645E3B0E4D747E1BF086A7E22759658DACB4FEA66957E
          7907FB03FAD7A2683F0F741D18ACBF66FB55CA1C8967F9B07D8741FE79AEB151
          40E07B574D2C1456B33C7C667EE6B9682B7999FA569569A459AD9D942228938E
          3A9F727D6BC9BE2BE80F6BAB47AC46A4DBDC809291C6D71D33F518FCABDAB628
          E00C7D2AADFD85B6A36925B5D42B34322ED646E84575CE0A51E53C5C262E542B
          FB57ADF7F33E6AB5BB01764A7A746F5AB6AEA47DE07E86BBAD63E10BB4ED268F
          7A891939F26E41C2FD1864FE9F8D632FC27F1207DBE6588F7F39B1FF00A0D79D
          3C2BB9F614B39C34A3772B1CF161D09193D39A62CA66952182379A663858E21B
          998FB015DEE9DF07E43206D5352CA8EB1DB0C67FE04DFE15E85A2786348D062D
          BA7D9A44C461A4EAE7EA6AA1836F739F13C414A0AD4B5679F7863E1C5C5DB477
          7AF03143D56CD5BE66FF007C8E9F406BD461B582DADD6DE0892285061110600F
          A54FB14E78EB4A5148C1FE75DD4E9460AC8F96C5E36B62A7CD51FF0091F3CF8E
          F409741F12CCDB48B6B973342FD064F2573EC73F862B2ADEFD5C0494ED61DF1D
          6BE8AD5F46B1D62D1ED6F6DC4D137507A83D88F43EF5E67AA7C1E984A5B4BD41
          4A67223B90463FE0433FCAB9AB61B9B547BF97E754D4142ABD51C6075232187E
          0690B01DFF00335BABF0A3C49B880D678FEF094E3F956AE9FF00082E9D81D475
          4554EEB6E327F335CCB0926CF5679D6162AFCC99C43DC22B6D0773138088324F
          D2BAFF000E780352D64ADC6A624B0B13CF978C4D20F4E7EE8F7233FCEBD1B40F
          05E87A0A86B4B4569C71E7C9F33FE67A7E15D0F96BE95D34B0718EB23C3C6E7F
          3A89C6868BB94B4BD2ACB48B25B5B2B748624ECA3927D49EA4FBD5D1C7414A14
          0E94B5D8B43E79B72777B882968A298828A28A0028A426B9EF1578A62F0D5A42
          4C525CDDDCBF976B6B10CBCAFE9F4142D5D909BB2B9D0375EF46D18FF1AF3CB9
          F1478DF4883FB4755D02C5EC53E6992D672658D7D46783EFFE4D5BD77C6D770D
          B6872787EDEDEF8EAECCB0F9AFB470A0FE07A8C56BECA4ED6EA473C773B70A31
          4BB40E800AE03FB77E226DCFFC231600FF00D7D7FF005FE94BACFC41B9F0EEB3
          A2D8EA9690C51DDC21EEDC3E4C0C4ED38EC4038A152949DA3A87B489DE900F51
          49B7FCE6B3758D4A4D3F41BDD4235577B781E5543D18804819F7AE63FE123F18
          5E5869B7BA468769756F75691CD233CFB4A39CE5464F2071F9D4C61263E7D4EE
          D46053ABCBF4AF1B78DF598A792C3C3D6132C1334327FA4EDDAE072393CF6FCE
          ADFF00C261E2EBBD7AF74AD3B45D3E69ACD23336FB82BB4B28247E0491F855BA
          125BDBEF25558BB1E8B4579E49E34F1268B776C7C49A1436B613CA223736F387
          11B1E99FA9AD9F14F8B5B437B6B1B1B56D4356BBCFD9ED6338C81FC44F61FE1F
          5225D295D15ED159B3AAA2BCEEEBC57E32D0A3179ADE856AFA7AF32BD8CA59E3
          5EED83D85775617D06A3630DE5ACAB2C13287475E8C0D4CA2E3A8D4AFA13B01B
          A978F4AE37C57E28D6B4BF1158691A2E9D6F793DDC2F281348531B739AA9FDB9
          F11475F0BE9F9FFAFB18FE754A949ABDC97515EC77B462B84D5BC59E248BC51F
          D8BA3E936977325A25C48249B6919383DFD6A11E3AD7347BC817C53A08B1B39E
          411ADDC32891109FEF7A53F6520F688F40C7B52818ED5CC5D7892787C75A7E80
          228CC17568F39989F994AE7B7E02B53C41A949A4787F50D42250F25B40F2AA1E
          8C402706A395DD2EE5732DCD40314B5C75D78DD34EF08E9DAB5D42CF797C89E4
          DA4232D23B0CED159971E27F1E585A9D46F3C39646CD177C90C5393322F7CF6E
          3BFD0D52A72D84EA247A25159BA56AF6DAD6956FA9594BBADE740EA48E9EA0FB
          820835CB7853C7B2F88B5DBCB196DD61B7D8D359CA3ACD1AB9563CFBD4A8369B
          EC3E75A799DDD15CF78A3C5307866C239248A4B8BB9DC476D6B10CB4AFE83DAB
          9CB9F1378EF4DB66D46FFC3D64D62837C915BCC5A655EFDF071DFDA9C60D89CD
          23D0FBD21E4D723A9F8CC43A5E85A8E9CB1DC5B6A9771C1B9CE36AB67D3B8C11
          4FF12F8BA4D26FADF49D2ECCEA3ACDC2EE4B753B422F7773D852E4907323AA00
          0E94A300F02BCF67F1878ABC3CC973E26D16D869ACD8927B090B983DD81EDF95
          59F16F8FBFE11B93469A38A3B8B1BE2C64941FBA8369DCBEBC377AAF672E82E7
          8A476EC79EF4E038AA72DDFF00C4BA4BB81D640223221ECDC647E06B37C25AE4
          DE21F0BD96AD3C690C93862C8872A30C4707F0A8B3B5CABABDAE6F8A5AE1BC35
          E3B7D7BC497BA6BC0B15BA876B3981E67546DAC7F035A5ABF88EE74EF16E89A3
          C70C6F16A1E66F763CA6D19E3D6A9D392972F95C14935A1D3D14C04E3AE6B1BC
          55ACCDA0F86AFB538512492DE30C11CE01E71FD6A62B99A436ECAE6CB0E7BD00
          0EC315E790F89BC7F35A4576BE17B392175122ECBAE594F3DCD6C697E348F55F
          0DEA3A84703417B608FE7DA4DC323A82403C03838EBEF54E9496A473A6758001
          D07E5462BCE34EF1578F355D3A0BEB4F0D584904C8191BED58C8FCEBA7F0EDF7
          88AED6E0EBDA5C16250AF9421977EF073BB3E98E29CA938ABB63534CE84014B8
          C5735E32F115C7867C3FFDA36F147348258E3DB29C0218E09E2B3359D7BC6B65
          7976D65A0D9CFA7C43724CD7186650B92719F5CD28C1C81CD23B8A6915E75A37
          8B3C6FACDA59DF5BE8160D65704112FDA31F2670C719FAD5DF1178F5B44F15D9
          696902496CC23379313CC21DB6A9FE5F9D374A5CDCA2F68B7677181E9456178B
          35C9BC3DE19BDD56144964B7552A8E70092C07F5AE657C51E3D16EB74DE16B49
          602A24C4573F315233C03DF9A214A535740E718BB1E84546738E694563F87B5E
          B7F126896FA9DB0654972191BEF230EA0FBD60D8F8E5EEFC773E87E422596F78
          20BA07EFCC8A1997D3B9A9E496BE43E64ADE676E296B98F18788EE7C37A6DA5C
          DB429334F771DB95938DA189E7F0ABDE21D68681A05E6A6F87F21328A780CC4E
          147E640A395E96EA3E64AFE46BB0E73834802FF76B9DF0878925F1268CD71710
          ADBDF432B417302F3B1C7FF5B06B2F4FF1D35C78FEFBC35751C70AC6DB6DA507
          991800769FC0FE955ECE576974139AD3CCEDF1834104F7AE6BC5DE22B8F0DE95
          6D776F124CF2DDC76E56438C6E2413C77AB9E25D6FFE11FF000FDE6A4C15DA14
          F914F01989C01F99153CADDADD46E495CDA51814B5CE783FC452788B45FB55C4
          220BA8A5686E21539F2DD4F4FCB15BFB9B3C74A524E2DA7BA1A69EC49457033F
          8BFC45AB6A7770785B4AB6B8B4B490C325D5D3955790750B823357BC3BE2EBBD
          4753BBD1B57B2163AB5AA7986343B9244E9B94FA722ADD39227DA44EC28AF34D
          2BC65E38D72C16FB4EF0ED84D6CCCCAAE6E76E70707827DABA3D0352F15DDDDC
          A9AE68F6D63008F2924336F25B3D29CA8CA2AEEDF782A899D4514D4CE0E4F7A7
          56458D3D6BCFEF57ED7F1A6CA39795B6D31A5855BA062C4123DF9FD2BD04804D
          70DE34D3750B3D6F4DF14E936AD773D8831DCDB29F9A484F52BEE324D6949A4D
          A22A5EC7632C31CB13C5246AD1BA95653D187A62BCEBC70ABA15FF008463D234
          E4716F732F9169161431DA38FD4D5ABDF89105F58BDA68561A8DCEAB3A948A26
          B768FCB63C6589E06339FC3B75AC7D5AD2EFC336DE0D7D47ED77D259CF2CB72F
          1069583100903DB9C55D28B834E44CA49AB2D0DA1E2FF16639F02DC8FF00B785
          AA7E23B18B5BF889A4D95F4044773A4CC24427263273CE7D41C7E38AD23F13B4
          9E73A66B7EBFF1E67FC6AAFDA9B57F895E1DD4E2B6B94B6934D98FEF632A5725
          B01BD0D52BC5DF96C4B4DAB5CA5A76AD743C19E21F0CEA8C7FB534AB4963CB1F
          F5B16C3B1C7AF1FC85763E08C1F03E89FF005E91E3F215CCFC4FD02EA5B41AFE
          9687ED9042F05C228CF9B0B82A781D719AE9FC188F1F82F4747464716B182AC3
          0471DC7AD2A8E2E9DD75611BA959981F0BC674BD673FF4159FFA56247ADDEE8F
          F127C4EF69A25DEA864F25596DFAA00A3935BDF0CA2961D335912C4F1B1D5266
          50E85720E3079A3C370C8BF12FC56EF1388E410EC628406C2F38354E4B9E4DEB
          71252718D9D8C1BCD5B54F88F30D021D24E9B6F0DC2497CD7128F31541CE1570
          3F3AD9D187DAFE2FF882494126D6D2286204FDD520138F4FFEBD1E3AD32E34CD
          4EC3C5FA5405EEACD825D4510F9A7849C7E3827F5F6A66AA6EB4AF105AF8D348
          B396FACEF2D963BEB78D71284EAAEAA7A9E991EDF520E74E368F605169EA7793
          C31CF0C9148AAC8EA55948EA08C1AE3FE14BB7FC21C6066252DEEE68A3F650D9
          03F5AA77DF10D752B56B3F0D69F7D77A9CCA5103DB98D223DCB13E95D3783B42
          3E1DF0CDAE9CEC1E68C1695C7F13B1C93FAD63671834CB4EF2BA391F1B5E5DD8
          7C49D0AE6C2C1AFEE52CE6096EAE14B6723A9ABF178BFC52F346AFE08B98D598
          067370B8504F3FD6AAF8CAFC68FF0011B42D525B5BB9ADE1B4955FECF133905B
          2074E2AD9F8A1A5019FECBD6FD7FE3C8FD7D6B67F047DDB93F69EA3AD096F8C7
          799CFF00C82138273FF2D2B4FC7D690DC781B5859402AB6CD20C8E8CBC8FE5FA
          D72B7DE208B45F890DAB4F657D25ADC6971AA79306E604BEEC119E38A5D775FB
          EF1C589D0744D2AFE18AE8AA5D5D5D45E5A471E7240F5271FE149C25CD17D340
          BFBAEE47A4CD25CF8F3C1B34B9F31F432493D7A1EB5D9F8DBFE449D6B9EB6727
          F2AE73C4D6175A16AFA078834FB296EEDB4C84DACF143F34822231B80EFDEA97
          883C68BE2AD1AE343F0FD85F5C5E5EAF94CD2C0634894F52C4FE54F95CDA9C76
          4095938B2AE8CAB73E2BF034328DD1C3A299910F4DF83CFD7815EAA63560C8EA
          A558608F5AE075FF000EEA1A4C3E1FD5B468BED779A2C421784759A22A0301FA
          FBFD7A53AE3E26DA5C59B43A669DAA5C6A922958ED4DB32957FF0068F4C0F6CD
          4D55ED3583083E5BA68D0F17CD6BE15F015FA69C91DB2B21860441B46F7C8E0F
          E24FE15CAEA6FA6F862D3C257D657D6D33E9B20B5BA114CAC5A2907CE4E0F407
          27F1A6C7A1DFDDEA1E1AF0C6AA65BA58BCCBFD40BEE78F27384DDFA7E35D4EB1
          F0EBC3975A45DC565A45A4174F1308A445C10D8C8FD71FAD546508A49BB89A72
          6DA455D4825E7C60D0D5F0D143A7C93460F23249191EFD3F2AEE1E35910A48AA
          508C1040C1047435E4D64359BAD1341F135959CB3EA9A26EB4BBB47521E58871
          F2FA9C739FE78C1DEBAF8996B7566F6FA3E9BA95CEAD22948ED5ADD9763F4F9D
          BA003DBD2A2A41CADCAF62A124AF75B878DEC6D34EB5F0C5AD95BC705BA6AF16
          D8D170A339CD2F84D7ED7F113C5D79312D2C2F1DB267B2E0F4FF00BE7F5ACDD4
          B45D474DF0EF852D2F269EF2F17568A59DF97DA4924FB80338AD1D622BCF09F8
          BA6F125A59CD79A6DF46A97D15B8DD246CA70240BDC55DD7272A7DC5AA95EC76
          7A9DAC377A5DDDBCCAA63921756CF4008AF1DD1A38F52B4F015A5E4424819EF2
          02AE320A0E07F4E7DABAAD5BC74FAF58C9A4F85EC2EEE6FAE94C46496131C700
          6EACC48EB8FF001A826D0DB45D6FC05A7C41E54B4332C92AA123254124FA64E7
          AD4D27C8ACDEA29FBD2DB424F0C5F5C68F1EAFE0ED4642D3DA43249652371E6C
          041231F4FE5F4AADA56B1FD87F03A1BA8D8095A19228474CB3C8CA3E879CFE06
          B6BE21E857175A7C7ACE98B8D4F4DCBA1C677C641DEA7D4639C5723A369F26B5
          A6F837C3B71692FD990CB7B78B24640DA1DC2A93EA724D52E592E616AB4B126A
          1FD9FE1AD1FC25A9595F5ACB71A5C823B958E5562E927FACE879C126BA2F11BA
          CBF127C1CEA772B09D94FB6D1CD68EA3F0EBC373E9B750DB68F6B0CEF1158E44
          5C1538E0FE75E7D6DACDC5AC9E0FBED42D2F646D304F05C048199C630ABF5182
          3F2AB8B53D63E60D4A27B78E82B95F891FF24FB59FFAE03FF4215058FC44D3AF
          EFEDECD34FD5D1E69046AD25995519F53D8559F886924DE01D5E38E369246840
          0A8324FCC3A0AE58A7192B9B49A7166AE8001F0DE97C7FCB9C5FFA00AF3FBF1F
          65F1EF8C21886D8E7D14CD2007F8C263F3E6AE699F11AC6CF47B3B4FECBD6659
          E18122DAB6870CCAA0601FAFB1A6E9DA4EA7369DE27F11EAB68D6F7BA9DB3243
          6A7E668E308700F03935AC138B6DADCCA5AC158A7E16F147896CFC2FA6DB5A78
          3AE2EADE38155275995438C75C5777E1DD4F52D56CE59753D1E4D3245936AC4E
          E18B0C0E78FA91F85713E16F1F5868DE18D3B4EBAD375733DBC0B1BECB424645
          761E1FF1759F88E79E3B5B5BF84C2A18FDA6031E7391C7AD1562F5F76C553BAE
          A62FC57CAF825B04FF00C7D43FFA17FF005ABA9D587FC53D7A7D2D64FF00D04D
          731F14E1967F05B2411BCAC2E623B514B1FBDCD74FA9866D02F146589B57C003
          93953DAA3ECC7D4AB5DB661FC3D758FE1D692EED80B0B127D00663FD2B8BB35B
          0F12681E2CD42F6FAD63BAD524616C92CCAAE891731F04FAD69437377A7FC12B
          58A1826FB6DC41F6648C4677067661C8EDC135BFA77C3BF0CDBE996D0DCE8F6B
          34F144AAF215E5980193F8D68A5185DBEE43526D239ED4F5AFEDDF81F3DDBB0F
          3442914D83FC6AEA0FE7C1FC6A58FC57E308347896DFC18EC520509299D5811B
          460ED1C9FA5616B7633E8969E32F0E416B29B4B958AF2CC2464AF2EBB9463D0F
          FE835D3D9FC46D3E0D3ADE05D1F5B9258A254C2D9360B00075AD1A49691BEA46
          AF761E14D4B4FD07E174F7D653B5C35AA4B24E1936B09FBA907A72457313A5B6
          9BF0DF4BBF8350B47D62D2E57517459D4BBB337CCB8FA11F952268FA94B636FA
          65DDA4B04BE21D5FED771085244302F38623A135E832FC3FF0AB44CABA25AAB3
          A91BC2F39E9FD6A64E1096AF7635CD25A7430FE22DDC5A8785344BC84E619EFE
          DA553D7823352F8FEEE0BBD6B40D0269E38A09AE3ED5746470A0469C8049F539
          AE45E3D407826DF439E09DA7D2F5D8E11FBA3F344589047AF7E7A0AEA34CD0AD
          7C57E32D7F54D5EC7CFB485D2CED56642010BCB11F8FF3AAF7616BF4BFFC00D5
          F4DC5D2350B4D33E28DEDADA5CC32DA6B36EB709E4C81C2CC830471EA0135893
          E8136B9AD78CDACC95D4ECEEE0B9B4913862EAA4E07D71F4E95AFE33F0A58E83
          A7DAEBBE1FD32386EF4FBA49D960424BA670463F1157FC14ACFE2DF15DD7972A
          453CD03C6CE85430D8DD2A7DA5973C7D0395ECCC2F12F8813C49F0F74BBE0024
          EBAA411DC458FB9202411EDEB5AFE3BBBB7BDF11787BC3F713C515BB4FF6CBA6
          95C2A948FEEA927D4835CF7C40D02F34DF10453E9D0BBE9DAA5DC32CF1221609
          3A375E3A6413CFFF005AB6B47D06D7C59E2CD7B56D66C05C5AC728B3B559D081
          84EA403EA69FB89297A895EEE361743D42D74DF89FA8D8DADCC32DA6AF08BA88
          C520602551F3038F5009FC2BB15F1068CD3ADBAEAD62652C1020B84DC4E70063
          39E6B8BF197852C7C3D6965AF787F4B48A7D3AED269120539923270C31DFAD74
          769E0DF0C168AFE0D220495889924DA55831E437D7A5653F66ED2348F3ABC4E6
          45978AFC157B7ADA2D843AAE93733B5C0849DB2C4CDD40F5FC8D6AF87FC4DA4F
          883589BCED29B4ED7A180ABC7711E24F2F23A1C0C8CF6ACBD23C5375E0B59B46
          F145BEA128495DADAFD11A613213900E39C8E7F4A7E9D34FE2DF1CDB7882D34E
          9ED74DB0B6789269D36B4EEC0F45EE0026B469BBF32F9937ECCC8F04788FC41A
          6F8622B6D3FC293DFDBACB2113A4CAA189639007B577BE1ED6757D59EE06A9A0
          49A5F9617CB32481F7E7391C7D0570FE08F1A59F873C310E9B79A6EAA668E491
          8F95685970589183F435DA685E33B1F116A0F696D67A8432247E66EB9B731AF0
          71807D79A9ADADDA8D874EFD59D3479DBC9CD3E91718E296B991B88719A6950D
          D4647BD29EB40E952F6B80D31AF271C9EE0D20451D171FD29E693BD0DF716801
          0039C60D05052D1431D909B07A51B453BBD25092B09B00A00C76A368A70A298C
          6ED19EFF009D26C5CE71CFD69C68ED45FA20DC40AA070314B80381483A529A61
          B0D6504F228DA0F6A5A514AE2D18D0A339A0AAFA7E54EEF477A4DF51D96C3428
          C74A4080738C7D29E3A51EB400D2A1B8C71E949E5824E79A70A075AAD81A4C02
          F3CD0146694503AD02B8DC00718ED4D0ABBBEED49DE8EF420B2EA33683D477A5
          DA3D294D152DEB61EE355154600C0A50AA3B528E949DE9AD5EA09202A08E9F95
          2845F4A0538508434A8A4D838A71EB4525AB18DD8BE9CD29507A8CD2D1556F31
          6886EC19CF4A360A70A3B54B49BB31A4868503B5047B53A90D0DD834136839C8
          A5DA281D297BD35A8AE26D5F4A368C6314B494F70F310A8CE68DA3D294D2520D
          0020A5DA28EF40A3AD8360DA28DA3FC9A534526DA1A43760F4A362FA538514D0
          6E26D1E946D14B453108541EA29362FA52D2D2F21F98D28A4608C8F7A08F6A75
          250C56420191C8A081E869450695C7A0ABD3A6296917A52D35B01FFFD9}
        Stretch = True
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 225
      Width = 1047
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        2.645833333333333000
        2770.187500000000000000)
      BandType = rbDetail
    end
    object QRSubDetail1: TQRSubDetail
      Left = 38
      Top = 226
      Width = 1047
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = DetailBand1
      Size.Values = (
        47.625000000000000000
        2770.187500000000000000)
      Master = QuickRep1
      FooterBand = SummaryBand1
      PrintBefore = False
      PrintIfEmpty = True
      object QRShape33: TQRShape
        Left = 1
        Top = 0
        Width = 321
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          2.645833333333330000
          0.000000000000000000
          849.312500000000000000)
        Shape = qrsRectangle
      end
      object QRExpr6: TQRExpr
        Left = 5
        Top = 3
        Width = 65
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333330000
          13.229166666666670000
          7.937500000000000000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyNotas.Aluno'
        FontSize = 7
      end
      object QRShape34: TQRShape
        Left = 321
        Top = 0
        Width = 50
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          849.312500000000000000
          0.000000000000000000
          132.291666666667000000)
        Shape = qrsRectangle
      end
      object QRShape3: TQRShape
        Left = 370
        Top = 0
        Width = 50
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          978.958333333333000000
          0.000000000000000000
          132.291666666667000000)
        Shape = qrsRectangle
      end
      object QRShape11: TQRShape
        Left = 419
        Top = 0
        Width = 50
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1108.604166666670000000
          0.000000000000000000
          132.291666666667000000)
        Shape = qrsRectangle
      end
      object QRShape12: TQRShape
        Left = 468
        Top = 0
        Width = 50
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1238.250000000000000000
          0.000000000000000000
          132.291666666667000000)
        Shape = qrsRectangle
      end
      object QRShape24: TQRShape
        Left = 517
        Top = 0
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1367.895833333330000000
          0.000000000000000000
          214.312500000000000000)
        Shape = qrsRectangle
      end
      object QRShape25: TQRShape
        Left = 597
        Top = 0
        Width = 81
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1579.562500000000000000
          0.000000000000000000
          214.312500000000000000)
        Shape = qrsRectangle
      end
      object QRShape26: TQRShape
        Left = 677
        Top = 0
        Width = 79
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1791.229166666670000000
          0.000000000000000000
          209.020833333333000000)
        Shape = qrsRectangle
      end
      object QRShape27: TQRShape
        Left = 755
        Top = 0
        Width = 79
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1997.604166666670000000
          0.000000000000000000
          209.020833333333000000)
        Shape = qrsRectangle
      end
      object QRShape28: TQRShape
        Left = 833
        Top = 0
        Width = 79
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          2203.979166666670000000
          0.000000000000000000
          209.020833333333000000)
        Shape = qrsRectangle
      end
      object QRShape29: TQRShape
        Left = 911
        Top = 0
        Width = 37
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          2410.354166666670000000
          0.000000000000000000
          97.895833333333300000)
        Shape = qrsRectangle
      end
      object QRShape30: TQRShape
        Left = 947
        Top = 0
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          2505.604166666670000000
          0.000000000000000000
          89.958333333333300000)
        Shape = qrsRectangle
      end
      object QRShape31: TQRShape
        Left = 980
        Top = 0
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          2592.916666666670000000
          0.000000000000000000
          89.958333333333300000)
        Shape = qrsRectangle
      end
      object QRShape32: TQRShape
        Left = 1013
        Top = 0
        Width = 34
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          2680.229166666670000000
          0.000000000000000000
          89.958333333333300000)
        Shape = qrsRectangle
      end
      object QRExpr1: TQRExpr
        Left = 329
        Top = 3
        Width = 36
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          870.479166666667000000
          7.937500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyNotas.Unid1'
        FontSize = 7
      end
      object QRExpr2: TQRExpr
        Left = 377
        Top = 3
        Width = 36
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          997.479166666667000000
          7.937500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyNotas.Unid2'
        FontSize = 7
      end
      object QRExpr4: TQRExpr
        Left = 474
        Top = 3
        Width = 36
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1254.125000000000000000
          7.937500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyNotas.Unid4'
        FontSize = 7
      end
      object QRExpr5: TQRExpr
        Left = 522
        Top = 3
        Width = 69
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1381.125000000000000000
          7.937500000000000000
          182.562500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyNotas.Media'
        FontSize = 7
      end
      object QRExpr10: TQRExpr
        Left = 603
        Top = 3
        Width = 69
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1595.437500000000000000
          7.937500000000000000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyNotas.PF'
        FontSize = 7
      end
      object QRExpr12: TQRExpr
        Left = 682
        Top = 3
        Width = 69
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1804.458333333330000000
          7.937500000000000000
          182.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyNotas.MedGlobal'
        FontSize = 7
      end
      object QRExpr13: TQRExpr
        Left = 763
        Top = 3
        Width = 64
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          2018.770833333330000000
          7.937500000000000000
          169.333333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyNotas.RF'
        FontSize = 7
      end
      object QRExpr3: TQRExpr
        Left = 426
        Top = 3
        Width = 36
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          34.395833333333300000
          1127.125000000000000000
          7.937500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Color = clWhite
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'QyNotas.Unid3'
        FontSize = 7
      end
    end
    object SummaryBand1: TQRBand
      Left = 38
      Top = 244
      Width = 1047
      Height = 36
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
        95.250000000000000000
        2770.187500000000000000)
      BandType = rbGroupFooter
      object QRShape86: TQRShape
        Left = 1
        Top = 1
        Width = 1045
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          2.645833333333330000
          2.645833333333330000
          2764.895833333330000000)
        Shape = qrsRectangle
      end
      object QRLabel53: TQRLabel
        Left = 655
        Top = 9
        Width = 323
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          1733.020833333333000000
          23.812500000000000000
          854.604166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Professor: _____________________________________'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel55: TQRLabel
        Left = 30
        Top = 9
        Width = 340
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          79.375000000000000000
          23.812500000000000000
          899.583333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Coordenador: _____________________________________'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
  end
  object QyMaster: TQuery
    DatabaseName = 'BDESisceb'
    SQL.Strings = (
      
        'SELECT Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodSer' +
        'ie, COUNT(*) '
      '    AS total'
      'FROM Vw_DiarioClasse'
      
        'GROUP BY Disciplina, Turma, Ano, Serie, Nivel,CodDisciplina,CodS' +
        'erie')
    Left = 37
    Top = 8
    object QyMasterCodDisciplina: TIntegerField
      FieldName = 'CodDisciplina'
      Origin = 'BDACADEMICO.Vw_DiarioClasse.CodDisciplina'
    end
    object QyMasterAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDACADEMICO.Vw_DiarioClasse.Ano'
    end
    object QyMasterTurma: TStringField
      FieldName = 'Turma'
      Origin = 'BDACADEMICO.Vw_DiarioClasse.Turma'
      FixedChar = True
      Size = 1
    end
    object QyMasterDisciplina: TStringField
      FieldName = 'Disciplina'
      Origin = 'BDACADEMICO.Vw_DiarioClasse.Disciplina'
      Size = 30
    end
    object QyMasterCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Vw_DiarioClasse.CodSerie'
    end
    object QyMasterSerie: TStringField
      FieldName = 'Serie'
      Origin = 'BDEXPOENTE.Vw_DiarioClasse.Serie'
      Size = 50
    end
    object QyMasterNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'BDEXPOENTE.Vw_DiarioClasse.Nivel'
      Size = 50
    end
  end
  object DsMaster: TDataSource
    DataSet = QyMaster
    Left = 69
    Top = 8
  end
  object QyDetalhe: TQuery
    OnCalcFields = QyDetalheCalcFields
    DatabaseName = 'BDESisceb'
    DataSource = DsMaster
    SQL.Strings = (
      'SELECT * FROM Vw_Matricula_Disciplinas'
      'where CodSerie = :CodSerie and Matricula = :Matricula and'
      'Turma = :Turma and Ano = 2006')
    Left = 104
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CodSerie'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'Matricula'
        ParamType = ptUnknown
      end
      item
        DataType = ftFixedChar
        Name = 'Turma'
        ParamType = ptUnknown
      end>
    object QyDetalheMatricula: TIntegerField
      FieldName = 'Matricula'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Matricula'
    end
    object QyDetalheCodDisciplina: TIntegerField
      FieldName = 'CodDisciplina'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.CodDisciplina'
    end
    object QyDetalheAno: TIntegerField
      FieldName = 'Ano'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Ano'
    end
    object QyDetalheTurma: TStringField
      FieldName = 'Turma'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Turma'
      FixedChar = True
      Size = 1
    end
    object QyDetalheDisciplina: TStringField
      FieldName = 'Disciplina'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Disciplina'
      Size = 30
    end
    object QyDetalheAluno: TStringField
      FieldName = 'Aluno'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Aluno'
      Size = 80
    end
    object QyDetalheUnid1: TStringField
      FieldName = 'Unid1'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Unid1'
      FixedChar = True
      Size = 4
    end
    object QyDetalheUnid2: TStringField
      FieldName = 'Unid2'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Unid2'
      FixedChar = True
      Size = 4
    end
    object QyDetalheF1: TIntegerField
      FieldName = 'F1'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.F1'
    end
    object QyDetalheF2: TIntegerField
      FieldName = 'F2'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.F2'
    end
    object QyDetalheF3: TIntegerField
      FieldName = 'F3'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.F3'
    end
    object QyDetalheSit: TStringField
      FieldName = 'Sit'
      Origin = 'BDACADEMICO.Vw_Matricula_Disciplinas.Sit'
      FixedChar = True
      Size = 4
    end
    object QyDetalheCargaHoraria: TFloatField
      FieldName = 'CargaHoraria'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.CargaHoraria'
    end
    object QyDetalheCodSerie: TIntegerField
      FieldName = 'CodSerie'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.CodSerie'
    end
    object QyDetalheSerie: TStringField
      FieldName = 'Serie'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.Serie'
      Size = 50
    end
    object QyDetalheNivel: TStringField
      FieldName = 'Nivel'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.Nivel'
      Size = 50
    end
    object QyDetalheUnid3: TStringField
      FieldName = 'Unid3'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.Unid3'
      FixedChar = True
      Size = 4
    end
    object QyDetalheUnid4: TStringField
      FieldName = 'Unid4'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.Unid4'
      FixedChar = True
      Size = 4
    end
    object QyDetalhePF: TStringField
      FieldName = 'PF'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.PF'
      FixedChar = True
      Size = 4
    end
    object QyDetalheRF: TStringField
      FieldName = 'RF'
      Origin = 'BDEXPOENTE.Vw_Matricula_Disciplinas.RF'
      FixedChar = True
      Size = 4
    end
    object QyDetalheMedia: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Media'
      Calculated = True
    end
    object QyDetalheMedFinal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MedFinal'
      Calculated = True
    end
    object QyDetalheMedGlobal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MedGlobal'
      Calculated = True
    end
    object QyDetalheMD1S: TStringField
      FieldKind = fkCalculated
      FieldName = 'MD1S'
      Size = 4
      Calculated = True
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
end
