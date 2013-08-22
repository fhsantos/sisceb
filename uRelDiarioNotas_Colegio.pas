unit uRelDiarioNotas_Colegio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, jpeg, Qrctrls, Db, DBTables;

type
  TfrmRelDiarioNotas_Colegio = class(TForm)
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRShape85: TQRShape;
    QRShape84: TQRShape;
    QRShape83: TQRShape;
    QRShape82: TQRShape;
    QRShape81: TQRShape;
    QRShape80: TQRShape;
    QRShape1: TQRShape;
    QRLabel42: TQRLabel;
    QRShape70: TQRShape;
    QRShape71: TQRShape;
    QRShape72: TQRShape;
    QRShape73: TQRShape;
    QRShape74: TQRShape;
    QRShape75: TQRShape;
    QRShape76: TQRShape;
    QRShape77: TQRShape;
    QRShape78: TQRShape;
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRShape16: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape2: TQRShape;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRLabel7: TQRLabel;
    QRExpr7: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr11: TQRExpr;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    qrlTitulo: TQRLabel;
    QRShape7: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel17: TQRLabel;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRExpr6: TQRExpr;
    sp2: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape24: TQRShape;
    SummaryBand1: TQRBand;
    QRShape86: TQRShape;
    QRLabel53: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QyMaster: TQuery;
    QyMasterCodDisciplina: TIntegerField;
    QyMasterAno: TIntegerField;
    QyMasterTurma: TStringField;
    QyMasterDisciplina: TStringField;
    QyMasterCodSerie: TIntegerField;
    QyMasterSerie: TStringField;
    QyMasterNivel: TStringField;
    DsMaster: TDataSource;
    QyDetalhe: TQuery;
    QyDetalheMatricula: TIntegerField;
    QyDetalheCodDisciplina: TIntegerField;
    QyDetalheAno: TIntegerField;
    QyDetalheTurma: TStringField;
    QyDetalheDisciplina: TStringField;
    QyDetalheAluno: TStringField;
    QyDetalheCodSerie: TIntegerField;
    QyDetalheSerie: TStringField;
    QyDetalheNivel: TStringField;
    QRShape33: TQRShape;
    sp1: TQRShape;
    QyDetalheUnid1: TStringField;
    QyDetalheUnid2: TStringField;
    QyDetalheF1: TIntegerField;
    QyDetalheF2: TIntegerField;
    QyDetalheF3: TIntegerField;
    QyDetalheSit: TStringField;
    QyDetalheUnid3: TStringField;
    QyDetalheUnid4: TStringField;
    QyDetalheSituacao: TStringField;
    QyDetalhePF: TStringField;
    QyDetalheRF: TStringField;
    QyConfig: TQuery;
    QyConfigRazao: TStringField;
    QyConfigCNPJ: TStringField;
    QyConfigEndereco: TStringField;
    QyConfigTel: TStringField;
    QyConfigFax: TStringField;
    QyConfigAno: TIntegerField;
    QyConfigDigito: TIntegerField;
    QyConfigMedia: TFloatField;
    QyDetalheMedia: TFloatField;
    QyDetalheMD1S: TStringField;
    QyDetalheMedGlobal: TFloatField;
    QyDetalheMedFinal: TFloatField;
    QRExpr1: TQRExpr;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape18: TQRShape;
    QRLabel5: TQRLabel;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel6: TQRLabel;
    QRShape9: TQRShape;
    QRShape23: TQRShape;
    QRShape30: TQRShape;
    QRShape13: TQRShape;
    QRLabel11: TQRLabel;
    QRShape14: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape15: TQRShape;
    QRLabel12: TQRLabel;
    QRShape34: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRLabel13: TQRLabel;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape17: TQRShape;
    QRLabel14: TQRLabel;
    QRShape42: TQRShape;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape19: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape46: TQRShape;
    QRShape47: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    QRShape50: TQRShape;
    QRShape51: TQRShape;
    QRShape52: TQRShape;
    QRShape53: TQRShape;
    QRShape54: TQRShape;
    QRShape55: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel38: TQRLabel;
    QRImage1: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QyDetalheCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelDiarioNotas_Colegio: TfrmRelDiarioNotas_Colegio;

implementation

{$R *.DFM}

procedure TfrmRelDiarioNotas_Colegio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qymaster.close;
  qydetalhe.close;
  Release;
  frmRelDiarioNotas_Colegio := nil;
end;

procedure TfrmRelDiarioNotas_Colegio.QyDetalheCalcFields(DataSet: TDataSet);
var
 Valor:STRING;
 MD1S,MD2S,Media,Valo,V_I,V_II:Real;
begin
 try
  QyConfig.open;
  if ((QyDetalheUnid1.Value <> '**') and (QyDetalheUnid2.Value = '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDetalheUnid1.Value)/2;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value = '**') and (QyDetalheUnid2.Value <> '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDetalheUnid2.Value)/2;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value = '**') and (QyDetalheUnid2.Value = '**') and (QyDetalheUnid3.Value <> '**') and (QyDetalheUnid4.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDetalheUnid3.Value)/2;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value = '**') and (QyDetalheUnid2.Value = '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value <> '**')) then
    begin
      MD1S := StrtoFloat(QyDetalheUnid4.Value)/2;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value = '**') and (QyDetalheUnid2.Value = '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value = '**')) then
    QyDetalheMD1S.AsString:= VALOR;

  //valor por valor
  if ((QyDetalheUnid1.Value <> '**') and (QyDetalheUnid2.Value <> '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value = '**')) then
    begin
      MD1S := (StrtoFloat(QyDetalheUnid1.Value)+StrtoFloat(QyDetalheUnid2.Value))/2;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value <> '**') and (QyDetalheUnid2.Value <> '**') and (QyDetalheUnid3.Value <> '**') and (QyDetalheUnid4.Value = '**')) then
    begin
      MD1S := (StrtoFloat(QyDetalheUnid1.Value)+StrtoFloat(QyDetalheUnid2.Value)+StrtoFloat(QyDetalheUnid3.Value))/3;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else
   begin
    MD1S:= (StrToFloat(QyDetalheUnid1.Value) + StrToFloat(QyDetalheUnid2.Value) + StrToFloat(QyDetalheUnid3.Value) + StrToFloat(QyDetalheUnid4.Value))/4;
    QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrtoFloat(copy(FloatToStr(MD1S),1,3))));

    if QyDetalheMedia.Value >= QyConfigMedia.Value then
     begin
      QyDetalheMedGlobal.Value:= QyDetalheMedia.Value;
      QyDetalheMedFinal.Value:= QyDetalheMedia.Value;
     end;
   end;

   if not ((QyDetalhePF.value = '**') or (Trim(QyDetalhePF.value) = '')) then
   begin
    if StrToFloat(QyDetalhePF.value) > QyDetalheMedia.Value then
     begin
       MD1S := (StrToFloat(QyDetalhePF.value) + QyDetalheMedia.Value)/2;
       QyDetalheMedGlobal.Value:= MD1S;

       if QyDetalheMedGlobal.Value >= QyConfigMedia.Value then
        begin
         QyDetalheMedFinal.Value:= QyDetalheMedGlobal.Value;
        end;
     end;
   end;


   if not ((QyDetalheRF.value = '**') or (Trim(QyDetalheRF.value) = '')) then
   begin
    if StrToFloat(QyDetalheRF.value) > QyDetalheMedGlobal.Value then
     begin
       QyDetalheMD1S.Value := QyDetalheRF.AsString;
       MD1S:= QyDetalheMD1S.AsFloat;
       QyDetalheMedFinal.Value:= QyDetalheMD1S.AsFloat;
     end;
   end;


except

end;

end;


end.
