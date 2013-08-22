unit uformapagtos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, DBTables, Grids, DBGrids, StdCtrls, Buttons;

type
  Tfrmformapatgos = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    QyForma: TQuery;
    dsforma: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QyFormaCodForma: TIntegerField;
    QyFormaDescricao: TStringField;
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmformapatgos: Tfrmformapatgos;

implementation

{$R *.DFM}

procedure Tfrmformapatgos.DBGrid1DblClick(Sender: TObject);
begin
  BitBtn1.click;
end;

end.
