unit ULogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects, FMX.Edit, FMX.Controls.Presentation, FMX.Layouts;

type
  TFrmLogin = class(TForm)
    lytCentral: TLayout;
    rectSenha: TRectangle;
    lblPassword: TLabel;
    edtSenha: TEdit;
    rectBtn: TRoundRect;
    spdBtn: TSpeedButton;
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

end.
