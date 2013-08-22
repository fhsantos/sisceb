program SISCEB;

uses
  Forms,
  uLogomarca in 'uLogomarca.pas' {Form1},
  uAlunos in 'uAlunos.pas' {frmAlunos},
  uBoletim in 'uBoletim.pas' {frmBoletim},
  uConsulta in 'uConsulta.pas' {frmConsulta},
  uConsultaDisciplinas in 'uConsultaDisciplinas.pas' {frmConsultaDisciplinas},
  uConsultaMatricula in 'uConsultaMatricula.pas' {frmConsultaMatricula},
  ucontas in 'uContas.pas' {frmcontas},
  uControleContas in 'uControleContas.pas' {FrmControleContas},
  uCursos in 'uCursos.pas' {frmCursos},
  uDescricao in 'uDescricao.pas' {frmDescricao},
  uDiarioNotas in 'uDiarioNotas.pas' {frmDiarioNotas},
  uDisciplinas in 'uDisciplinas.pas' {frmDisciplinas},
  uDtModule in 'uDtModule.pas' {dtModule: TDataModule},
  uFinanceiro in 'uFinanceiro.pas' {frmFinanceiro},
  uformapagtos in 'uformapagtos.pas' {frmformapatgos},
  uGerarCarne in 'uGerarCarne.pas' {frmGerarCarne},
  uGrade in 'uGrade.pas' {frmGrade},
  uInformacao in 'uInformacao.pas' {frmGrades},
  uNotas in 'uNotas.pas' {frmNotas},
  uNotas_Colegio in 'uNotas_Colegio.pas' {frmNotas_Colegio},
  uOpcaoFinanceiro in 'uOpcaoFinanceiro.pas' {frmOpcaoFinanceiro},
  uRelAlunos in 'uRelAlunos.pas' {frmRelAlunos},
  uRelAlunosMatriculados in 'uRelAlunosMatriculados.pas' {frmRelAlunosMatriculados},
  uRelAniversariantes in 'uRelAniversariantes.pas' {FrmRelAniversariantes},
  uRelBoletim in 'uRelBoletim.pas' {frmRelBoletim},
  uRelBoletim_Colegio in 'uRelBoletim_Colegio.pas' {frmRelBoletim_Colegio},
  uRelCarne in 'uRelCarne.pas' {frmRelCarne},
  uRelCarteira in 'uRelCarteira.pas' {frmRelCarteira},
  uRelCarteiraVerso in 'uRelCarteiraVerso.pas' {frmRelCarteiraVerso},
  uRelDebitos in 'uRelDebitos.pas' {frmRelDebitos},
  ureldiarioclasse in 'ureldiarioclasse.pas' {frmRelDiarioClasse},
  uRelDiarioNotas in 'uRelDiarioNotas.pas' {frmRelDiarioNotas},
  uRelDiarioNotas_Colegio in 'uRelDiarioNotas_Colegio.pas' {frmRelDiarioNotas_Colegio},
  uRelDiarioNotasColegio in 'uRelDiarioNotasColegio.pas' {frmRelDiarioNotasColegio},
  uRelDiarioNotasComNotas in 'uRelDiarioNotasComNotas.pas' {frmRelDiarioNotasNotas},
  uRelDiarioNotasSemPreenchimento_EJA in 'uRelDiarioNotasSemPreenchimento_EJA.pas' {frmRelDiarioNotasSemPreenchimento_EJA},
  uRelFinanceiro in 'uRelFinanceiro.pas' {frmRelFinanceiro},
  uRelListasContasAB in 'uRelListasContasAB.pas' {FrmRelListasContasPG},
  uRelMatricula in 'uRelMatricula.pas' {frmRelMatricula},
  uRelMatriculados in 'uRelMatriculados.pas' {frmRelMatriculados},
  uRelMatriculadosDisciplinas in 'uRelMatriculadosDisciplinas.pas' {frmRelMatriculadosDisciplinas},
  uSenhaCaixa in 'uSenhaCaixa.pas' {frmSenhaCaixa},
  uTipoNota in 'uTipoNota.pas' {frmTipoNota},
  uTurmas in 'uTurmas.pas' {frmTurmas},
  uMatricula in 'uMatricula.pas' {frmMatricula},
  uTipoTurmas in 'uTipoTurmas.pas' {frmTipoTurma},
  USenha in 'uSenha.pas' {FrmSenha},
  uMovCaixa in 'uMovCaixa.pas' {frmMovCaixa},
  uListaContas in 'uListaContas.pas' {frmListaContas},
  uinterface in 'uinterface.pas' {frmInterface},
  uFormaPagto in 'uFormaPagto.pas' {frmFormaPagto},
  uRelSimuladoModeloNovo in 'uRelSimuladoModeloNovo.pas' {FrmRelSimuladoModeloNovo},
  uRelEtiquetas in 'uRelEtiquetas.pas' {frmRelEtiquetas},
  uDiarioClasse in 'uDiarioClasse.pas' {frmDiarioClasse},
  uRelDiarioNotasSemPreenchimento_Colegio in 'uRelDiarioNotasSemPreenchimento_Colegio.pas' {frmRelDiarioNotasSemPreenchimento_Colegio},
  uRelDiarioNotasPreenchimento_Colegio in 'uRelDiarioNotasPreenchimento_Colegio.pas' {frmRelDiarioNotasPreenchimento_Colegio};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdtModule, dtModule);
  Application.CreateForm(TfrmInterface, frmInterface);
  Application.Run;
end.
