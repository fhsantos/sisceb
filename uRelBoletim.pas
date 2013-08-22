unit uRelBoletim;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, jpeg, StdCtrls;

type
  TfrmRelBoletim = class(TForm)
    QyMaster: TQuery;
    QyNotas: TQuery;
    DsMaster: TDataSource;
    QyMasterMatricula: TIntegerField;
    QyMasterAno: TIntegerField;
    QyMasterTurma: TStringField;
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
    QyNotasSit: TStringField;
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
    QyNotasMD1S: TStringField;
    QRSubDetail1: TQRSubDetail;
    QRExpr21: TQRExpr;
    QRShape40: TQRShape;
    QRExpr22: TQRExpr;
    QRShape42: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRShape56: TQRShape;
    QRShape57: TQRShape;
    QRShape59: TQRShape;
    QRShape60: TQRShape;
    QRExpr23: TQRExpr;
    QRExpr24: TQRExpr;
    QRExpr25: TQRExpr;
    QRExpr26: TQRExpr;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
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
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape37: TQRShape;
    QRLabel39: TQRLabel;
    QRShape38: TQRShape;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel36: TQRLabel;
    QRShape16: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    SummaryBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRExpr5: TQRExpr;
    QRShape1: TQRShape;
    ChildBand1: TQRChildBand;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
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
    QRShape10: TQRShape;
    QRLabel3: TQRLabel;
    QRExpr6: TQRExpr;
    QRExpr12: TQRExpr;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRExpr14: TQRExpr;
    QRLabel6: TQRLabel;
    QRExpr13: TQRExpr;
    QyMasterCPF: TStringField;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRImage1: TQRImage;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QyConfigMediaEja: TFloatField;
    QRSysData1: TQRSysData;
    QyMasterSituacao: TStringField;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
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
  frmRelBoletim: TfrmRelBoletim;

implementation



{$R *.DFM}

procedure TfrmRelBoletim.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 qyMaster.close;
 qynotas.close;
 Release;
 frmRelBoletim:= nil;
//frmRel_Boletim:= NIL;
end;

procedure TfrmRelBoletim.SummaryBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR Mes:Integer;
BEGIN
    Mes:= strtoint(FormatDateTime('mm',date));
//    qrData.Caption:= 'Aracaju,' + '  ' + FormatDateTime('dd',Date) + '  ' + 'de' + '  ' + FrmPrincipal.MesReferencia(Mes) + '  ' + FormatDateTime('yyyy',Date) + '.';
END;
procedure TfrmRelBoletim.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
VAR Mes:Integer;
BEGIN
    Mes:= strtoint(FormatDateTime('mm',date));
//    QRMES.Caption:= FrmPrincipal.MesReferencia(Mes);
END;

procedure TfrmRelBoletim.QyNotasCalcFields(DataSet: TDataSet);
var
 Valor:STRING;
 MD1S,MD2S,Media,Valo,V_I,V_II:Real;
begin
 try
  QyConfig.open;
  if ((QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value = '**') and (QyNotasUnid4.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyNotasUnid1.Value)/4;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value = '**') and (QyNotasUnid4.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyNotasUnid2.Value)/4;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value <> '**') and (QyNotasUnid4.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyNotasUnid3.Value)/4;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value = '**') and (QyNotasUnid4.Value <> '**')) then
    begin
      MD1S := StrtoFloat(QyNotasUnid4.Value)/4;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyNotasUnid1.Value = '**') and (QyNotasUnid2.Value = '**') and (QyNotasUnid3.Value = '**') and (QyNotasUnid4.Value = '**')) then
    QyNotasMD1S.AsString:= VALOR;

  //valor por valor
  if ((QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value = '**') and (QyNotasUnid4.Value = '**')) then
    begin
      MD1S := (StrtoFloat(QyNotasUnid1.Value)+StrtoFloat(QyNotasUnid2.Value))/2;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyNotasUnid1.Value <> '**') and (QyNotasUnid2.Value <> '**') and (QyNotasUnid3.Value <> '**') and (QyNotasUnid4.Value = '**')) then
    begin
      MD1S := (StrtoFloat(QyNotasUnid1.Value)+StrtoFloat(QyNotasUnid2.Value)+StrtoFloat(QyNotasUnid3.Value))/3;
      QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else
   begin
    MD1S:= (StrToFloat(QyNotasUnid1.Value) + StrToFloat(QyNotasUnid2.Value) + StrToFloat(QyNotasUnid3.Value) + StrToFloat(QyNotasUnid4.Value))/4;
    QyNotasMedia.Value:= StrToFloat(FormatFloat('#0.0',StrtoFloat(copy(FloatToStr(MD1S),1,3))));

    if QyNotasMedia.Value >= QyConfigMediaEja.Value then
     begin
      QyNotasMedGlobal.Value:= QyNotasMedia.Value;
      QyNotasMedFinal.Value:= QyNotasMedia.Value;
     end;
   end;

   if not ((QyNotasPF.value = '**') or (Trim(QyNotasPF.value) = '')) then
   begin
    if StrToFloat(QyNotasPF.value) > QyNotasMedia.Value then
     begin
       MD1S := (StrToFloat(QyNotasPF.value) + QyNotasMedia.Value)/2;
       QyNotasMedGlobal.Value:= MD1S;

       if QyNotasMedGlobal.Value >= QyConfigMediaEja.Value then
        begin
         QyNotasMedFinal.Value:= QyNotasMedGlobal.Value;
        end;
     end;
   end;


   if not ((QyNotasRF.value = '**') or (Trim(QyNotasRF.value) = '')) then
   begin
    if StrToFloat(QyNotasRF.value) > QyNotasMedGlobal.Value then
     begin
       MD1S := (StrToFloat(QyNotasRF.value) + QyNotasMedia.value)/2;
       QyNotasMedFinal.Value:= MD1S;
     end;
   end;


except

end;
end;
end.
