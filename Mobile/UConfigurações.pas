unit UConfigurações;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Objects, FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    rectToolbar: TRectangle;
    lblTitulo: TLabel;
    Image1: TImage;
    Rectangle1: TRectangle;
    Label1: TLabel;
    Edit1: TEdit;
    Rectangle2: TRectangle;
    SpeedButton1: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

end.
