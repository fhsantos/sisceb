unit uRelAniversariantes;

interface                                               

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, QuickRpt, Qrctrls, Db, DBTables, jpeg;

type
  TFrmRelAniversariantes = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    qrMes: TQRLabel;
    DetailBand1: TQRBand;
    QyAlunos: TQuery;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    PageFooterBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QyAlunosMatricula: TIntegerField;
    QyAlunosNome: TStringField;
    QyAlunosPai: TStringField;
    QyAlunosMae: TStringField;
    QyAlunosDt_Nasc: TDateTimeField;
    QyAlunosDt_Cadastro: TDateTimeField;
    QyAlunosBairro: TStringField;
    QyAlunosEndereco: TStringField;
    QyAlunosCEP: TStringField;
    QyAlunosTel: TStringField;
    QyAlunosCI: TStringField;
    QyAlunosCPF: TStringField;
    QyAlunosDtParte: TStringField;
    QyAlunosSituacao: TStringField;
    QRLabel2: TQRLabel;
    QyAlunosAno: TIntegerField;
    QyAlunosSerie: TStringField;
    QyAlunosNivel: TStringField;
    QyAlunosTurma: TStringField;
    QRSysData1: TQRSysData;
    QRImage1: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QyAlunosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelAniversariantes: TFrmRelAniversariantes;

implementation

{$R *.DFM}

procedure TFrmRelAniversariantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 try
  QyAlunos.close;
  Release;
  FrmRelAniversariantes:=nil;
 except
 end;
end;

procedure TFrmRelAniversariantes.QyAlunosCalcFields(DataSet: TDataSet);
begin
  try
    QyAlunosDtParte.AsString:= copy(QyAlunosDt_Nasc.AsString,1,5);

  except

  end;

end;

end.
