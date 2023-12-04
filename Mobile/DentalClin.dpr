program DentalClin;

uses
  System.StartUpCopy,
  FMX.Forms,
  ULogin in 'ULogin.pas' {FrmLogin},
  UPrincipal in 'UPrincipal.pas' {frmPrincipal},
  UCliente in 'UCliente.pas' {FrmCliente},
  UProcedimentos in 'UProcedimentos.pas' {FrmCadProcedimento},
  UConfigurações in 'UConfigurações.pas' {Form1},
  DmGlobal in 'Dm\DmGlobal.pas' {DM: TDataModule},
  UInserts in 'Units\UInserts.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TFrmCliente, FrmCliente);
  Application.CreateForm(TFrmCadProcedimento, FrmCadProcedimento);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
