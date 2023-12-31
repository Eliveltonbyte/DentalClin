program DentalClin;

uses
  System.StartUpCopy,
  FMX.Forms,
  ULogin in 'ULogin.pas' {FrmLogin},
  UCliente in 'UCliente.pas' {FrmCliente},
  UProcedimentos in 'UProcedimentos.pas' {FrmCadProcedimento},
  UConfigurações in 'UConfigurações.pas' {Form1},
  DmGlobal in 'Dm\DmGlobal.pas' {DM: TDataModule},
  UInserts in 'Units\UInserts.pas',
  uFormat in 'Units\uFormat.pas',
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UOrcamentos in 'UOrcamentos.pas' {frmOrcamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmOrcamentos, frmOrcamentos);
  Application.Run;
end.
