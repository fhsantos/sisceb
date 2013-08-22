unit uRelDiarioNotasComNotas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, jpeg, Qrctrls, Db, DBTables;

type
  TfrmRelDiarioNotasNotas = class(TForm)
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
    QRLabel11: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape9: TQRShape;
    QRLabel6: TQRLabel;
    QRShape10: TQRShape;
    QRLabel5: TQRLabel;
    QRShape13: TQRShape;
    QRLabel12: TQRLabel;
    QRShape14: TQRShape;
    QRLabel13: TQRLabel;
    QRShape15: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape17: TQRShape;
    QRLabel16: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel17: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape23: TQRShape;
    QRLabel22: TQRLabel;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRExpr6: TQRExpr;
    QRShape34: TQRShape;
    QRShape3: TQRShape;
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
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QyMaster: TQuery;
    QyMasterCodDisciplina: TIntegerField;
    QyMasterAno: TIntegerField;
    QyMasterTurma: TStringField;
    QyMasterDisciplina: TStringField;
    QyMasterCodSerie: TIntegerField;
    QyMasterSerie: TStringField;
    QyMasterNivel: TStringField;
    DsMaster: TDataSource;
    QRShape33: TQRShape;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
    QRExpr10: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QyDetalhe: TQuery;
    QyDetalheMatricula: TIntegerField;
    QyDetalheCodDisciplina: TIntegerField;
    QyDetalheAno: TIntegerField;
    QyDetalheTurma: TStringField;
    QyDetalheDisciplina: TStringField;
    QyDetalheAluno: TStringField;
    QyDetalheUnid1: TStringField;
    QyDetalheUnid2: TStringField;
    QyDetalheF1: TIntegerField;
    QyDetalheF2: TIntegerField;
    QyDetalheF3: TIntegerField;
    QyDetalheSit: TStringField;
    QyDetalheCargaHoraria: TFloatField;
    QyDetalheCodSerie: TIntegerField;
    QyDetalheSerie: TStringField;
    QyDetalheNivel: TStringField;
    QyDetalheUnid3: TStringField;
    QyDetalheUnid4: TStringField;
    QyDetalhePF: TStringField;
    QyDetalheRF: TStringField;
    QyDetalheMedia: TFloatField;
    QyDetalheMedFinal: TFloatField;
    QyDetalheMedGlobal: TFloatField;
    QyDetalheMD1S: TStringField;
    QRExpr3: TQRExpr;
    QyConfig: TQuery;
    QyConfigRazao: TStringField;
    QyConfigCNPJ: TStringField;
    QyConfigEndereco: TStringField;
    QyConfigTel: TStringField;
    QyConfigFax: TStringField;
    QyConfigAno: TIntegerField;
    QyConfigDigito: TIntegerField;
    QyConfigMedia: TFloatField;
    QRLabel1: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRImage1: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QyDetalheCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelDiarioNotasNotas: TfrmRelDiarioNotasNotas;

implementation

{$R *.DFM}

procedure TfrmRelDiarioNotasNotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qymaster.close;
  QyDetalhe.close;
  Release;
  frmRelDiarioNotasNotas:= nil;
end;

procedure TfrmRelDiarioNotasNotas.QyDetalheCalcFields(DataSet: TDataSet);
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
