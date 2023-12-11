unit UProcedimentos;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Edit, FMX.Layouts, FMX.Objects, FMX.Controls.Presentation, FMX.ListBox, uFormat,
  UInserts;

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
    cbStatus: TComboBox;
    procedure edtValorEnter(Sender: TObject);
    procedure edtValorExit(Sender: TObject);
    procedure spdCadastrarClick(Sender: TObject);
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

procedure TFrmCadProcedimento.edtValorEnter(Sender: TObject);
begin
    ResetFormat(Edtvalor);
end;

procedure TFrmCadProcedimento.edtValorExit(Sender: TObject);
begin
    Formatar(edtValor, TFormato.VALOR);
end;

procedure TFrmCadProcedimento.spdCadastrarClick(Sender: TObject);
var
text: string;
begin
   text :=  cbStatus.Selected.Text;

   UInserts.InserirProcedimento(edtNome.Text,
                                text,
                                STRTOFloat(Edtvalor.Text));

   ShowMessage('Cadastrado com sucesso');
end;

end.                           3
