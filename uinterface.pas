unit uinterface;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolWin, ComCtrls, ExtCtrls, Menus, StdCtrls, Db, DBTables, jpeg,
  ActnList;

type
  TfrmInterface = class(TForm)
    StatusBar1: TStatusBar;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Bancos: TMenuItem;
    Clientes: TMenuItem;
    Categorias: TMenuItem;
    Cartoes: TMenuItem;
    Empresas: TMenuItem;
    horario: TMenuItem;
    uhs: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    Fechartudo: TMenuItem;
    Controles1: TMenuItem;
    FormadePagamento: TMenuItem;
    Requisicoes: TMenuItem;
    RequisiodeConsumo: TMenuItem;
    StatusGeralUhs: TMenuItem;
    Usuarios: TMenuItem;
    Movimentao1: TMenuItem;
    MovimentoDirio1: TMenuItem;
    Relatrios1: TMenuItem;
    RelaodeClientes1: TMenuItem;
    SemEmpresa1: TMenuItem;
    ComEmpresa1: TMenuItem;
    Geral1: TMenuItem;
    RelaodeCategorias1: TMenuItem;
    StatusGeralUHs1: TMenuItem;
    RelaodeProdutosporCategoria1: TMenuItem;
    RelaodeEmpresas1: TMenuItem;
    RelaodeCheckins1: TMenuItem;
    RelaoGeralMovimentaoDiria1: TMenuItem;
    Configuraes1: TMenuItem;
    Sobre1: TMenuItem;
    N1: TMenuItem;
    Logotipo1: TMenuItem;
    PreReserva: TMenuItem;
    RelaodeUHs1: TMenuItem;
    Itens: TMenuItem;
    Estoque: TMenuItem;
    Compras: TMenuItem;
    FechamentodeCaixa1: TMenuItem;
    CoolBar1: TCoolBar;
    PageScroller1: TPageScroller;
    PageScroller4: TPageScroller;
    PageScroller6: TPageScroller;
    ActionList1: TActionList;
    Bloqueio: TAction;
    RelaodeHspedes1: TMenuItem;
    ScrollBox1: TScrollBox;
    Image2: TImage;
    Label1: TLabel;
    Image1: TImage;
    lblProfessores: TLabel;
    Image5: TImage;
    lblMatricula: TLabel;
    Image14: TImage;
    lblcursos: TLabel;
    Image18: TImage;
    lblDisciplina: TLabel;
    lblTurma: TLabel;
    ScrollBox4: TScrollBox;
    Image17: TImage;
    lblBloqueio: TLabel;
    Image3: TImage;
    Label3: TLabel;
    ScrollBox5: TScrollBox;
    Bevel1: TBevel;
    Label5: TLabel;
    Bevel2: TBevel;
    Label6: TLabel;
    Bevel3: TBevel;
    Label7: TLabel;
    Bevel4: TBevel;
    Label8: TLabel;
    Bevel5: TBevel;
    Label13: TLabel;
    Label15: TLabel;
    Image6: TImage;
    Image4: TImage;
    Bevel7: TBevel;
    MainMenu2: TMainMenu;
    Cadastro2: TMenuItem;
    Financeirio1: TMenuItem;
    Movimentao2: TMenuItem;
    Estoque1: TMenuItem;
    Relatrios2: TMenuItem;
    N3: TMenuItem;
    Contatos1: TMenuItem;
    N4: TMenuItem;
    Parametro1: TMenuItem;
    MovimentoGeral1: TMenuItem;
    Bevel6: TBevel;
    Label2: TLabel;
    Boletim1: TMenuItem;
    Matriculados1: TMenuItem;
    Image10: TImage;
    Label11: TLabel;
    sp1: TShape;
    sp2: TShape;
    sp3: TShape;
    sp4: TShape;
    sp5: TShape;
    sp6: TShape;
    sp7: TShape;
    sp8: TShape;
    sp11: TShape;
    sp12: TShape;
    Label12: TLabel;
    sp9: TShape;
    Image13: TImage;
    Label4: TLabel;
    Image7: TImage;
    sp13: TShape;
    Image8: TImage;
    Label20: TLabel;
    sp10: TShape;
    Shape2: TShape;
    Label9: TLabel;
    Image9: TImage;
    Label10: TLabel;
    Image11: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClientesClick(Sender: TObject);
    procedure FechartudoClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Label1Click(Sender: TObject);
    procedure lblMatriculaClick(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblcursosClick(Sender: TObject);
    procedure lblDisciplinaClick(Sender: TObject);
    procedure lblTurmaClick(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure lblBloqueioClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Boletim1Click(Sender: TObject);
    procedure Matriculados1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
  private
    { Private declarations }
  public
  procedure fecharforms;
  procedure VisibleShape;
  { Public declarations }
  end;

var
  frmInterface: TfrmInterface;


implementation

uses uAlunos, uMatricula, uTipoNota, uDtModule, uNotas_Colegio, uNotas,
  uDiarioClasse, uSenhaCaixa, uFinanceiro, uGrade, USenha, uCursos,
  uDisciplinas, uTurmas, uDescricao, uBoletim, uMovCaixa, uDiarioNotas;



{$R *.DFM}


procedure TfrmInterface.VisibleShape;
 var i,x : Integer;
begin
  for i := 0 to ComponentCount -1 do
  if Components[i] is TShape then
  begin
    TShape(Components[i]).Visible := false;
  end;
end;

procedure TfrmInterface.fecharforms;
  var i:integer;
begin
    for I := MDIChildCount-1 downto 0 do
    MDIChildren[I].Close;
end;

procedure TfrmInterface.FormClose(Sender: TObject;
  var Action: TCloseAction);
  var i:integer;
begin
    for I := MDIChildCount-1 downto 0 do
    MDIChildren[I].Close;
    Release;
    frmInterface:= nil;
    application.Terminate;
end;

procedure TfrmInterface.ClientesClick(Sender: TObject);
begin
//   LockWindowUpdate(handle);
//   LockWindowUpdate(0);
end;

procedure TfrmInterface.FechartudoClick(Sender: TObject);
  var i:integer;
begin
    for I := MDIChildCount-1 downto 0 do
    MDIChildren[I].Close;
end;

procedure TfrmInterface.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  case Application.MessageBox('Essa operação irá finalizar' + #13 +
                              'o sistema deseja prosseguir?','Atenção',mb_okcancel+mb_iconinformation) of

  idok:
  Application.Terminate;

  idcancel:
  sysutils.Abort;
  end;

end;

procedure TfrmInterface.Label1Click(Sender: TObject);
begin
try
  fecharforms;
  VisibleShape;
  sp1.visible:=true;
  LockWindowUpdate(handle);
  frmAlunos:=TfrmAlunos.Create(self);
  frmAlunos.show;
  LockWindowUpdate(0);
except
 abort;
end;
end;

procedure TfrmInterface.lblMatriculaClick(Sender: TObject);
begin
try
  fecharforms;
  VisibleShape;
  sp2.visible:=true;
  LockWindowUpdate(handle);
  frmMatricula:=TfrmMatricula.Create(self);
  frmMatricula.show;
  LockWindowUpdate(0);
except
 abort;
end;

end;

procedure TfrmInterface.Label11Click(Sender: TObject);
begin
try
  frmTipoNota:=TfrmTipoNota.Create(self);
  frmTipoNota.ShowModal;

  if dtModule.Tag = 1 then
   begin
    fecharforms;
    VisibleShape;
    sp8.visible:=true;
    LockWindowUpdate(handle);
    frmNotas_Colegio:=TfrmNotas_Colegio.Create(self);
    frmNotas_Colegio.show;
    LockWindowUpdate(0);
   end;

  if dtModule.Tag = 2 then
   begin
    fecharforms;
    VisibleShape;
    sp8.visible:=true;
    LockWindowUpdate(handle);
    frmNotas:=TfrmNotas.Create(self);
    frmNotas.show;
    LockWindowUpdate(0);
   end;
except
 abort;
end;

end;

procedure TfrmInterface.Label5Click(Sender: TObject);
begin
  try
    frmDiarioClasse:=TfrmDiarioClasse.create(self);
    frmDiarioClasse.ShowModal;
  except

  end;
end;

procedure TfrmInterface.Label12Click(Sender: TObject);
begin
 try
  frmSenhaCaixa:=tfrmSenhaCaixa.Create(self);
  frmSenhaCaixa.ShowModal;

  if dtModule.Senha <> '510' then
   begin
    Application.MessageBox('Senha Inválida!','Informações',mb_ok+mb_iconexclamation);
    SysUtils.Abort;
   end;

   fecharforms;
   VisibleShape;
   sp9.visible:=true;
   LockWindowUpdate(handle);
   frmFinanceiro:=TfrmFinanceiro.Create(self);
   frmFinanceiro.show;
   LockWindowUpdate(0);
 except

 end;
end;

procedure TfrmInterface.Label15Click(Sender: TObject);
begin
  try
   fecharforms;
   VisibleShape;
   sp7.visible:=true;
   LockWindowUpdate(handle);
   frmGrade:=TfrmGrade.create(self);
   frmGrade.Show;
   LockWindowUpdate(0);
  except
  abort;
  end;

end;

procedure TfrmInterface.FormShow(Sender: TObject);
begin
 FrmSenha := TFrmSenha.Create(Application);
 FrmSenha.ShowModal;

end;

procedure TfrmInterface.lblcursosClick(Sender: TObject);
begin
try
  fecharforms;
  VisibleShape;
  sp4.visible:=true;
  LockWindowUpdate(handle);
  frmCursos:=TFrmCursos.create(self);
  frmCursos.QySerie.open;
  frmCursos.Show;
  LockWindowUpdate(0);
except
end;
end;

procedure TfrmInterface.lblDisciplinaClick(Sender: TObject);
begin
try
 fecharforms;
 VisibleShape;
 sp6.visible:=true;
 LockWindowUpdate(handle);
 frmDisciplinas:=TfrmDisciplinas.create(self);
 frmDisciplinas.QyDisciplinas.open;
 frmDisciplinas.Show;
 LockWindowUpdate(0);
except
end;
end;

procedure TfrmInterface.lblTurmaClick(Sender: TObject);
begin
try
  fecharforms;
  VisibleShape;
  sp5.visible:=true;
  LockWindowUpdate(handle);
  frmTurmas:=TfrmTurmas.create(self);
  frmTurmas.QyTurmas.open;
  frmTurmas.QySerie.open;
  frmTurmas.Show;
  LockWindowUpdate(0);
except
end;
end;

procedure TfrmInterface.Label20Click(Sender: TObject);
begin
try
  fecharforms;
  VisibleShape;
  sp10.visible:=true;
  LockWindowUpdate(handle);
  FrmDescricao:=TFrmDescricao.create(self);
  with FrmDescricao.QyMaterial do
   begin
    close;
    sql.clear;
    sql.add('select * from Tb_Descricao');
    sql.add('order by Descricao');
    open;
   end;

  FrmDescricao.Show;
  LockWindowUpdate(0);
except
end;
end;

procedure TfrmInterface.lblBloqueioClick(Sender: TObject);
begin
try
  VisibleShape;
  sp11.visible:=true;

 FrmSenha := TFrmSenha.Create(Application);
 FrmSenha.ShowModal;
except
end;
end;

procedure TfrmInterface.Label2Click(Sender: TObject);
begin
  try
    frmDiarioNotas:=TfrmDiarioNotas.create(self);
    frmDiarioNotas.pnName.Caption:= 'Diário de Notas';
    frmDiarioNotas.ShowModal;
  except

  end;

end;

procedure TfrmInterface.Boletim1Click(Sender: TObject);
begin
  frmBoletim:=TfrmBoletim.create(self);
  frmBoletim.ShowModal;
end;

procedure TfrmInterface.Matriculados1Click(Sender: TObject);
begin
  try
    dtModule.Tag:= 3;
    frmDiarioClasse:=TfrmDiarioClasse.create(self);
    frmDiarioClasse.ShowModal;   
  except

  end;

end;

procedure TfrmInterface.Label4Click(Sender: TObject);
begin
 try
   fecharforms;
   VisibleShape;
   sp13.visible:=true;
   LockWindowUpdate(handle);
   frmMovCaixa:=TfrmMovCaixa.Create(self);
   frmMovCaixa.show;
   LockWindowUpdate(0);
 except
 end;
end;

procedure TfrmInterface.Label10Click(Sender: TObject);
begin
  try
    dtModule.Tag:= 4;
    frmDiarioClasse:=TfrmDiarioClasse.create(self);
    frmDiarioClasse.ShowModal;


  except

  end;

end;

procedure TfrmInterface.Label6Click(Sender: TObject);
begin
  frmBoletim:=TfrmBoletim.create(self);
  frmBoletim.ShowModal;
end;

end.
