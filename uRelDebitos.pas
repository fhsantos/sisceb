unit uRelDebitos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, jpeg;

type
  TfrmRelDebitos = class(TForm)
    QyMaster: TQuery;
    QyFinanceiro: TQuery;
    DsMaster: TDataSource;
    QyMasterMatricula: TIntegerField;
    QyMasterAno: TIntegerField;
    QyMasterTurma: TStringField;
    QyMasterSituacao: TStringField;
    QyMasterDt_Matricula: TDateTimeField;
    QyMasterSerie: TStringField;
    QyMasterCodSerie: TIntegerField;
    QyMasterNome: TStringField;
    QyMasterNivel: TStringField;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRExpr21: TQRExpr;
    QRShape40: TQRShape;
    QRShape2: TQRShape;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRLabel17: TQRLabel;
    QRExpr9: TQRExpr;
    QRShape8: TQRShape;
    QRLabel19: TQRLabel;
    QRExpr10: TQRExpr;
    QRLabel23: TQRLabel;
    QRExpr15: TQRExpr;
    QRShape22: TQRShape;
    QRLabel24: TQRLabel;
    QRExpr18: TQRExpr;
    QRShape26: TQRShape;
    QRLabel26: TQRLabel;
    QRExpr20: TQRExpr;
    QRLabel1: TQRLabel;
    QRExpr11: TQRExpr;
    QRShape16: TQRShape;
    QyMasterCodNivel: TIntegerField;
    QyMasterCI: TStringField;
    QyMasterPai: TStringField;
    QyMasterMae: TStringField;
    QyMasterDt_Nasc: TDateTimeField;
    QyMasterCPF: TStringField;
    QyFinanceiroMatricula: TIntegerField;
    QyFinanceiroCodSerie: TIntegerField;
    QyFinanceiroParcela: TIntegerField;
    QyFinanceiroAno: TIntegerField;
    QyFinanceiroCodForma: TIntegerField;
    QyFinanceiroDt_venc: TDateTimeField;
    QyFinanceiroValor: TFloatField;
    QyFinanceiroSituacao: TStringField;
    QyFinanceiroDt_pagto: TDateTimeField;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QyFinanceiroDias: TIntegerField;
    QyFinanceiroMulta: TFloatField;
    QyFinanceiroTotal: TFloatField;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    SummaryBand1: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel13: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape3: TQRShape;
    QRImage1: TQRImage;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QyFinanceiroCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelDebitos: TfrmRelDebitos;

implementation

{$R *.DFM}

procedure TfrmRelDebitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 qyMaster.close;
 QyFinanceiro.close;
 Release;
 frmRelDebitos:= nil;
//frmRel_Boletim:= NIL;
end;

procedure TfrmRelDebitos.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR Mes:Integer;
BEGIN
    Mes:= strtoint(FormatDateTime('mm',date));
//    qrData.Caption:= 'Aracaju,' + '  ' + FormatDateTime('dd',Date) + '  ' + 'de' + '  ' + FrmPrincipal.MesReferencia(Mes) + '  ' + FormatDateTime('yyyy',Date) + '.';
END;
procedure TfrmRelDebitos.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR Mes:Integer;
BEGIN
    Mes:= strtoint(FormatDateTime('mm',date));
//    QRMES.Caption:= FrmPrincipal.MesReferencia(Mes);
END;

procedure TfrmRelDebitos.QyFinanceiroCalcFields(DataSet: TDataSet);
 var
  DiasAtraso:String;
  Valor,VlMulta:Real;

  dia:Real;
  MulTotal:Real;
  MulDiaria,MulMensal:Real;

begin
  try
   if (QyFinanceiroParcela.AsInteger = 1) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 2)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 2) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 2)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 3) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 2)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 4) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 2)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 5) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 2)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 6) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 2)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 7) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 2)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 8) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 2)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 9) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 2)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;

   if (QyFinanceiroParcela.AsInteger = 10) and (QyFinanceiroDt_venc.AsDateTime < Date) then
    begin
     if (QyFinanceiroSituacao.AsString = 'EM ABERTA') then
      begin
        DiasAtraso:= FormatFloat('000',Date - QyFinanceiroDt_venc.AsDateTime);
        QyFinanceiroDias.AsInteger:= StrToInt(DiasAtraso);
        dia := StrToFloat(DiasAtraso);

        MulDiaria:= (dia * 0.10);
        MulMensal:= (QyFinanceiroValor.AsFloat * 2)/100;
        QyFinanceiroMulta.AsFloat:= MulDiaria + MulMensal;
        QyFinanceiroTotal.AsFloat:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
        MulTotal:= MulDiaria + MulMensal + QyFinanceiroValor.AsFloat;
      end;
    end;
  except

  end;


end;

end.
