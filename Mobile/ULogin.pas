unit ULogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.Layouts, UCliente,
  UPrincipal;

type
  TFrmLogin = class(TForm)
    lytCentral: TLayout;
    rectSenha: TRectangle;
    lblPassword: TLabel;
    edtSenha: TEdit;
    rectBtn: TRoundRect;
    spdBtn: TSpeedButton;
    procedure spdBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

procedure TFrmLogin.spdBtnClick(Sender: TObject);
begin
 if NOT Assigned(FrmPrincipal) then
        Application.CreateForm(TFrmPrincipal, FrmPrincipal);

    FrmPrincipal.Show;
end;

end.
