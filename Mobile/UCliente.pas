unit UCliente;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.Memo.Types,
  FMX.ScrollBox, FMX.Memo, FMX.ListBox, FMX.Edit, FMX.ListView, FMX.Layouts;

type
  TFrmCliente = class(TForm)
    rectToolbar: TRectangle;
    lblTitulo: TLabel;
    imgVoltar: TImage;
    lytGeral: TLayout;
    ListView1: TListView;
    rectCentral: TRectangle;
    lblNome: TLabel;
    edtNome: TEdit;
    lblTel1: TLabel;
    edtTel1: TEdit;
    lblTel2: TLabel;
    edtTel2: TEdit;
    lblCpf: TLabel;
    rectBtn: TRectangle;
    spdCadastrar: TSpeedButton;
    lblEmail: TLabel;
    edtEmail: TEdit;
    lblObs: TLabel;
    MMOBS: TMemo;
    edtCpf: TEdit;
    procedure spdCadastrarClick(Sender: TObject);
  private
    function Validar: Boolean;
    procedure LimparCampo;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.fmx}

uses DmGlobal, UInserts;
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}


procedure TFrmCliente.LimparCampo;
begin

  edtNome.Text :=  '';
  edtTel1.Text :=  '';
  edtTel2.Text :=  '';
  edtCpf.Text  :=  '';
  edtEmail.Text:=  '';
  MMOBS.Text   :=  '';

  edtNome.SetFocus;


end;

function TFrmCliente.Validar: Boolean;
var
campo : string;
begin
   result:= true;
   Campo:= '';

   if(EdtNome.Text = '')  then begin
      result := false;
   if (EdtCpf.Text = '') or (EdtTel1.Text = '') then begin
     Campo:= campo + 'Nome' + ', ';
     edtNome.SetFocus;
   end
   else
      Campo:= campo + 'Nome';
   end;

     if(EdtCpf.Text = '') then begin
      result := false;
      Campo:= campo + 'Cpf';
      edtCpf.SetFocus;
     if EdtTel1.Text = '' then begin
     Campo:= campo + ', ';
     end;
   end;

     if(EdtTel1.Text = '') then begin
      result := false;
      Campo:= campo + 'Telefone';
      edtTel1.SetFocus;
   end;

   ShowMessage('Os campos abaixo precisam ser preenchidos: ' + campo);
end;

procedure TFrmCliente.spdCadastrarClick(Sender: TObject);
begin
    if Validar = false then
    exit;
    UInserts.InserirCliente(edtNome.Text,
                            EdtCpf.Text,
                            EdtTel1.Text,
                            EdtTel2.Text,
                            edtEmail.Text,
                            MMOBS.Text);

    ShowMessage('Cadastrado com sucesso');
    //limpar Edits
    LimparCampo;

end;

end.
