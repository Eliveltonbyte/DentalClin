unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.Layouts;

type
  TfrmPrincipal = class(TForm)
    rectToolbar: TRectangle;
    lblTitulo: TLabel;
    rectMenu: TRectangle;
    lytAba1: TLayout;
    lblAba1: TLabel;
    imgAba1: TImage;
    lytAba2: TLayout;
    lblAba2: TLabel;
    imgAba2: TImage;
    lytAba3: TLayout;
    lblAba3: TLabel;
    imgAba3: TImage;
    lytAba4: TLayout;
    lblAba4: TLabel;
    imgAba4: TImage;
    procedure imgAba1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.fmx}

uses UCliente, UProcedimentos;
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.SmXhdpiPh.fmx ANDROID}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TfrmPrincipal.imgAba1Click(Sender: TObject);
begin
   if NOT Assigned(FrmCliente) then
        Application.CreateForm(TFrmCliente, FrmCliente);

     FrmCliente.Show;
end;

end.
