unit uRelDiarioNotasPreenchimento_Colegio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, jpeg, Qrctrls, Db, DBTables;

type
  TfrmRelDiarioNotasPreenchimento_Colegio = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    QRShape16: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape2: TQRShape;
    QRSysData3: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData1: TQRSysData;
    QRExpr7: TQRExpr;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRExpr8: TQRExpr;
    QRLabel10: TQRLabel;
    QRExpr9: TQRExpr;
    QRExpr11: TQRExpr;
    QRLabel3: TQRLabel;
    qrlTitulo: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape9: TQRShape;
    QRLabel6: TQRLabel;
    QRShape10: TQRShape;
    QRLabel5: TQRLabel;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape17: TQRShape;
    QRLabel16: TQRLabel;
    QRShape19: TQRShape;
    QRLabel17: TQRLabel;
    DetailBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRExpr6: TQRExpr;
    sp2: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape24: TQRShape;
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
    QRExpr1: TQRExpr;
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
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRExpr5: TQRExpr;
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
    QRExpr10: TQRExpr;
    QRExpr12: TQRExpr;
    QRExpr13: TQRExpr;
    QRExpr14: TQRExpr;
    QRLabel7: TQRLabel;
    QRExpr15: TQRExpr;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QyDetalheUnid5: TStringField;
    QyDetalheUnid6: TStringField;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRShape3: TQRShape;
    SummaryBand1: TQRBand;
    QRShape86: TQRShape;
    QRLabel55: TQRLabel;
    QRLabel53: TQRLabel;
    QuickRep2: TQuickRep;
    DetailBand2: TQRBand;
    QRShape85: TQRShape;
    QRShape84: TQRShape;
    QRShape83: TQRShape;
    QRShape82: TQRShape;
    QRShape81: TQRShape;
    QRShape80: TQRShape;
    QRShape4: TQRShape;
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
    QRLabel4: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel19: TQRLabel;
    QRImage1: TQRImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QyDetalheCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelDiarioNotasPreenchimento_Colegio: TfrmRelDiarioNotasPreenchimento_Colegio;

implementation

{$R *.DFM}

procedure TfrmRelDiarioNotasPreenchimento_Colegio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 try
  qymaster.close;
  qydetalhe.close;
  Release;
  frmRelDiarioNotasPreenchimento_Colegio := nil;
 except
 end;
end;

procedure TfrmRelDiarioNotasPreenchimento_Colegio.QyDetalheCalcFields(DataSet: TDataSet);
var
 Valor:STRING;
 MD1S,MD2S,Media,Valo,V_I,V_II:Real;
begin
 try
  QyConfig.open;
  if ((QyDetalheUnid1.Value <> '**') and (QyDetalheUnid2.Value = '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value = '**') and
       (QyDetalheUnid5.Value = '**') and (QyDetalheUnid6.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDetalheUnid1.Value)/1;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value = '**') and (QyDetalheUnid2.Value <> '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value = '**') and
           (QyDetalheUnid5.Value = '**') and (QyDetalheUnid6.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDetalheUnid2.Value)/1;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value = '**') and (QyDetalheUnid2.Value = '**') and (QyDetalheUnid3.Value <> '**') and (QyDetalheUnid4.Value = '**') and
           (QyDetalheUnid5.Value = '**') and (QyDetalheUnid6.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDetalheUnid3.Value)/1;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value = '**') and (QyDetalheUnid2.Value = '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value <> '**') and
           (QyDetalheUnid5.Value = '**') and (QyDetalheUnid6.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDetalheUnid4.Value)/1;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value = '**') and (QyDetalheUnid2.Value = '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value = '**') and
           (QyDetalheUnid5.Value <> '**') and (QyDetalheUnid6.Value = '**')) then
    begin
      MD1S := StrtoFloat(QyDetalheUnid5.Value)/1;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value = '**') and (QyDetalheUnid2.Value = '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value = '**') and
           (QyDetalheUnid5.Value = '**') and (QyDetalheUnid6.Value <> '**')) then
    begin
      MD1S := StrtoFloat(QyDetalheUnid6.Value)/1;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value = '**') and (QyDetalheUnid2.Value = '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value = '**') and
           (QyDetalheUnid5.Value = '**') and (QyDetalheUnid6.Value = '**')) then
    QyDetalheMD1S.AsString:= VALOR;

  //valor por valor
  if ((QyDetalheUnid1.Value <> '**') and (QyDetalheUnid2.Value <> '**') and (QyDetalheUnid3.Value = '**') and (QyDetalheUnid4.Value = '**') and
      (QyDetalheUnid5.Value = '**') and (QyDetalheUnid6.Value = '**')) then
    begin
      MD1S := (StrtoFloat(QyDetalheUnid1.Value)+StrtoFloat(QyDetalheUnid2.Value))/2;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value <> '**') and (QyDetalheUnid2.Value <> '**') and (QyDetalheUnid3.Value <> '**') and (QyDetalheUnid4.Value = '**') and
           (QyDetalheUnid5.Value = '**') and (QyDetalheUnid6.Value = '**')) then
    begin
      MD1S := (StrtoFloat(QyDetalheUnid1.Value)+StrtoFloat(QyDetalheUnid2.Value)+StrtoFloat(QyDetalheUnid3.Value))/3;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value <> '**') and (QyDetalheUnid2.Value <> '**') and (QyDetalheUnid3.Value <> '**') and (QyDetalheUnid4.Value <> '**') and
           (QyDetalheUnid5.Value = '**') and (QyDetalheUnid6.Value = '**')) then
    begin
      MD1S := (StrtoFloat(QyDetalheUnid1.Value)+StrtoFloat(QyDetalheUnid2.Value)+StrtoFloat(QyDetalheUnid3.Value)+StrtoFloat(QyDetalheUnid4.Value))/4;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else if ((QyDetalheUnid1.Value <> '**') and (QyDetalheUnid2.Value <> '**') and (QyDetalheUnid3.Value <> '**') and (QyDetalheUnid4.Value <> '**') and
           (QyDetalheUnid5.Value <> '**') and (QyDetalheUnid6.Value = '**')) then
    begin
      MD1S := (StrtoFloat(QyDetalheUnid1.Value)+StrtoFloat(QyDetalheUnid2.Value)+StrtoFloat(QyDetalheUnid3.Value)+StrtoFloat(QyDetalheUnid4.Value)+StrtoFloat(QyDetalheUnid5.Value))/5;
      QyDetalheMedia.Value:= StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
    end

  else
   begin
    MD1S:= (StrToFloat(QyDetalheUnid1.Value)+StrToFloat(QyDetalheUnid2.Value)+StrToFloat(QyDetalheUnid3.Value)+StrToFloat(QyDetalheUnid4.Value)+StrtoFloat(QyDetalheUnid5.Value)+StrtoFloat(QyDetalheUnid6.Value))/6;
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
    if (StrToFloat(QyDetalheRF.value) >= QyDetalheMedia.Value) or (StrToFloat(QyDetalheRF.value) <= QyDetalheMedia.Value) then
     begin
       MD1S := (StrtoFloat(QyDetalheRF.Value) + QyDetalheMedia.Value)/2;
       QyDetalheMedFinal.Value := StrToFloat(FormatFloat('#0.0',StrToFloat(copy(FloatToStr(MD1S),1,3))));
     end;
   end;


except

end;

end;


end.
