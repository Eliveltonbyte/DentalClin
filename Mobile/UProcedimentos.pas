unit UProcedimentos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.ListBox;

type
  TFrmCadProcedimento = class(TForm)
    rectToolbar: TRectangle;
    lblTitulo: TLabel;
    imgVoltar: TImage;
    lytCentral: TLayout;
    lblNome: TLabel;
    edtNome: TEdit;
    lblProcedimento: TLabel;
    lblValor: TLabel;
    edtValor: TEdit;
    rectBtn: TRectangle;
    spdCadastrar: TSpeedButton;
    ComboBox1: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProcedimento: TFrmCadProcedimento;

implementation

{$R *.fmx}
{$R *.LgXhdpiTb.fmx ANDROID}

end.
