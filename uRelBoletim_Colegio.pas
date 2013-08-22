unit uRelBoletim_Colegio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, jpeg, StdCtrls;

type
  TfrmRelBoletim_Colegio = class(TForm)
    QyMaster: TQuery;
    QyNotas: TQuery;
    DsMaster: TDataSource;
    QyMasterMatricula: TIntegerField;
    QyMasterAno: TIntegerField;
    QyMasterTurma: TStringField;
    QyMasterSituacao: TStringField;
    QyMasterDt_Matricula: TDateTimeField;
    QyNotasMatricula: TIntegerField;
    QyNotasCodDisciplina: TIntegerField;
    QyNotasAno: TIntegerField;
    QyNotasTurma: TStringField;
    QyNotasDisciplina: TStringField;
    QyNotasAluno: TStringField;
    QyNotasUnid1: TStringField;
    QyNotasUnid2: TStringField;
    QyNotasF1: TIntegerField;
    QyNotasF2: TIntegerField;
    QyNotasF3: TIntegerField;
    QyNotasCargaHoraria: TFloatField;
    QyNotasCodSerie: TIntegerField;
    QyNotasSerie: TStringField;
    QyNotasNivel: TStringField;
    QyNotasUnid3: TStringField;
    QyNotasUnid4: TStringField;
    QyMasterSerie: TStringField;
    QyMasterCodSerie: TIntegerField;
    QyMasterNome: TStringField;
    QyMasterNivel: TStringField;
    QyNotasPF: TStringField;
    QyNotasRF: TStringField;
    QyNotasMedia: TFloatField;
    QyNotasMedFinal: TFloatField;
    QyNotasMedGlobal: TFloatField;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRExpr21: TQRExpr;
    QRShape40: TQRShape;
    QRExpr22: TQRExpr;
    QRShape42: TQRShape;
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
    QRLabel1: TQRLabel;
    QRExpr11: TQRExpr;
    QRLabel27: TQRLabel;
    SummaryBand1: TQRBand;
    QyConfig: TQuery;
    QyConfigRazao: TStringField;
    QyConfigCNPJ: TStringField;
    QyConfigEndereco: TStringField;
    QyConfigTel: TStringField;
    QyConfigFax: TStringField;
    QyConfigAno: TIntegerField;
    QyConfigDigito: TIntegerField;
    QyConfigMedia: TFloatField;
    QyMasterCodNivel: TIntegerField;
    QyMasterCI: TStringField;
    QyMasterPai: TStringField;
    QyMasterMae: TStringField;
    QyMasterDt_Nasc: TDateTimeField;
    QyMasterCPF: TStringField;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QyNotasSituacao: TStringField;
    QyNotasUnid5: TStringField;
    QyNotasUnid6: TStringField;
    QyNotasRec1S: TStringField;
    QyNotasRec2S: TStringField;
    QyNotasRec3S: TStringField;
    QyNotasRec4S: TStringField;
    QyNotasRec5S: TStringField;
    QyNotasRec6S: TStringField;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QyNotasMD2S: TFloatField;
    QyNotasMD3S: TFloatField;
    QyNotasMD4S: TFloatField;
    QyNotasMD5S: TFloatField;
    QyNotasMD6S: TFloatField;
    QyNotasMD1S: TFloatField;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRShape62: TQRShape;
    QRShape63: TQRShape;
    QRShape6: TQRShape;
    QRShape9: TQRShape;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRShape1: TQRShape;
    QRShape10: TQRShape;
    QRLabel3: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr12: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRExpr14: TQRExpr;
    QRLabel6: TQRLabel;
    QRExpr13: TQRExpr;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape7: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr7: TQRExpr;
    QRShape16: TQRShape;
    QRShape23: TQRShape;
    QRExpr17: TQRExpr;
    QRExpr18: TQRExpr;
    QRExpr8: TQRExpr;
    QyNotasSit: TStringField;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel20: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QyNotasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelBoletim_Colegio: TfrmRelBoletim_Colegio;

implementation


{$R *.DFM}

procedure TfrmRelBoletim_Colegio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 qyMaster.close;
 qynotas.close;
 Release;
 frmRelBoletim_Colegio:= nil;
//frmRel_Boletim:= NIL;
end;

procedure TfrmRelBoletim_Colegio.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR Mes:Integer;
BEGIN
    Mes:= strtoint(FormatDateTime('mm',date));
//    qrData.Caption:= 'Aracaju,' + '  ' + FormatDateTime('dd',Date) + '  ' + 'de' + '  ' + FrmPrincipal.MesReferencia(Mes) + '  ' + FormatDateTime('yyyy',Date) + '.';
END;
procedure TfrmRelBoletim_Colegio.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR Mes:Integer;
BEGIN
    Mes:= strtoint(FormatDateTime('mm',date));
//    QRMES.Caption:= FrmPrincipal.MesReferencia(Mes);
END;

procedure TfrmRelBoletim_Colegio.QyNotasCalcFields(DataSet: TDataSet);
var
 Valor:STRING;
 MD1S,MD2S,Media,Valo,V_I,V_II:Real;
begin
 try
  QyConfig.open;
  if (QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value = '**') and
     (QyNotasUnid4.Value = '**')  and (QyNotasUnid5.Value = '**') and (QyNotasUnid6.Value = '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid1.Value))/6;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end;

  if (QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value = '**') and
     (QyNotasUnid4.Value = '**')  and (QyNotasUnid5.Value = '**') and (QyNotasUnid6.Value = '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid2.Value))/6;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end;

  if (QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value <> '**') and
     (QyNotasUnid4.Value = '**')  and (QyNotasUnid5.Value = '**') and (QyNotasUnid6.Value = '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid3.Value))/6;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end;

  if (QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value = '**') and
     (QyNotasUnid4.Value <> '**')  and (QyNotasUnid5.Value = '**') and (QyNotasUnid6.Value = '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid4.Value))/6;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end;

  if (QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value = '**') and
     (QyNotasUnid4.Value = '**')  and (QyNotasUnid5.Value <> '**') and (QyNotasUnid6.Value = '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid5.Value))/6;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end;

  if (QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value = '**') and
     (QyNotasUnid4.Value = '**')  and (QyNotasUnid5.Value = '**') and (QyNotasUnid6.Value <> '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid6.Value))/6;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end;

  if (QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value = '**') and
     (QyNotasUnid4.Value = '**')  and (QyNotasUnid5.Value = '**') and (QyNotasUnid6.Value = '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid1.Value)+StrtoFloat(QyNotasUnid2.Value))/2;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end;

  if (QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value <> '**') and
     (QyNotasUnid4.Value = '**')  and (QyNotasUnid5.Value = '**') and (QyNotasUnid6.Value = '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid1.Value)+StrtoFloat(QyNotasUnid2.Value)+StrtoFloat(QyNotasUnid3.Value))/3;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end;

  if (QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value <> '**') and
     (QyNotasUnid4.Value <> '**')  and (QyNotasUnid5.Value = '**') and (QyNotasUnid6.Value = '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid1.Value)+StrtoFloat(QyNotasUnid2.Value)+StrtoFloat(QyNotasUnid3.Value)+StrtoFloat(QyNotasUnid4.Value))/4;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end;

  if (QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value <> '**') and
     (QyNotasUnid4.Value <> '**')  and (QyNotasUnid5.Value <> '**') and (QyNotasUnid6.Value = '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid1.Value)+StrtoFloat(QyNotasUnid2.Value)+StrtoFloat(QyNotasUnid3.Value)+StrtoFloat(QyNotasUnid4.Value)+StrtoFloat(QyNotasUnid5.Value))/5;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end;

  if (QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value <> '**') and
     (QyNotasUnid4.Value <> '**')  and (QyNotasUnid5.Value <> '**') and (QyNotasUnid6.Value <> '**') then
    begin
     MD1S := (StrtoFloat(QyNotasUnid1.Value)+StrtoFloat(QyNotasUnid2.Value)+StrtoFloat(QyNotasUnid3.Value)+StrtoFloat(QyNotasUnid4.Value)+StrtoFloat(QyNotasUnid5.Value)+StrtoFloat(QyNotasUnid6.Value))/6;
     QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
     QyNotasMedFinal.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))))
    end;

  if not ((QyNotasPF.value = '**') or (Trim(QyNotasPF.value) = '')) then
   begin
//    if (StrToFloat(QyNotasPF.value) >= QyNotasMedia.Value) or (StrToFloat(QyNotasPF.value) <= QyNotasMedia.Value) then
//     begin
       MD1S := (StrtoFloat(QyNotasPF.Value) + QyNotasMedia.Value)/2;
       QyNotasMedFinal.Value:= MD1S;
//     end;
   end;

  if not ((QyNotasRF.value = '**') or (Trim(QyNotasRF.value) = '')) then
   begin
    if (StrToFloat(QyNotasRF.value) >= QyNotasMedia.Value) or (StrToFloat(QyNotasRF.value) <= QyNotasMedia.Value) then
     begin
       MD1S := (StrtoFloat(QyNotasRF.Value) + QyNotasMedia.Value)/2;
       QyNotasMedFinal.Value := StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
     end;
   end;

  if (QyNotasMedFinal.Value >= 6) then
   begin
    QyNotasSit.AsString:= 'AM';
     if (QyNotasPF.AsString <> '**') then
      begin
       MD1S:= (StrToFloat(QyNotasPF.value) + QyNotasMedia.Value)/2;
       if MD1S >= 6 then
       QyNotasSit.AsString:= 'AM';
      end;
     if (QyNotasRF.AsString <> '**') then
      begin
       MD1S:= (StrToFloat(QyNotasRF.value) + QyNotasMedia.Value)/2;
       if MD1S >= 5 then
       QyNotasSit.AsString:= 'AM';
      end;
   end
  else if (QyNotasMedFinal.Value < 5) then
   QyNotasSit.AsString:= 'RM';

except

end;

end;
end.
