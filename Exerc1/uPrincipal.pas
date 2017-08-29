unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    dfValor: TEdit;
    btIncluir: TButton;
    Label1: TLabel;
    lbQtdItens: TLabel;
    btExcluir: TButton;
    btAlterar: TButton;
    tbSelecaoItem: TTrackBar;
    procedure btIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tbSelecaoItemChange(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
  private
    { Private declarations }
    FaArrayDinamico: Array of Variant;
    procedure AtualizarBarraSelecao;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.AtualizarBarraSelecao;
begin
  lbQtdItens.Caption := IntToStr(length(FaArrayDinamico));
  tbSelecaoItem.Max := length(FaArrayDinamico) - 1;
end;

procedure TForm1.btIncluirClick(Sender: TObject);
var
  nTamanhoArray: Integer;
  nPosicaoInsert: Integer;
begin
  if dfValor.text = EmptyStr then
    exit;

  nTamanhoArray := length(FaArrayDinamico) + 1;
  SetLength(FaArrayDinamico, nTamanhoArray);
  nPosicaoInsert := High(FaArrayDinamico);
  FaArrayDinamico[nPosicaoInsert] := dfValor.Text;
  dfValor.Clear;
  dfValor.SetFocus;
  AtualizarBarraSelecao;
end;

procedure TForm1.btAlterarClick(Sender: TObject);
begin
  FaArrayDinamico[tbSelecaoItem.Position] := dfValor.Text;
end;

procedure TForm1.btExcluirClick(Sender: TObject);
var
  i: integer;
begin
  for i := tbSelecaoItem.Position to Length(FaArraydinamico) - 2  do
    FaArrayDinamico[i] := FaArrayDinamico[i + 1];

  setLength(FaArrayDinamico, Length(FaArraydinamico) - 1);
  AtualizarBarraSelecao;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  tbSelecaoItem.Max := 0;
end;

procedure TForm1.tbSelecaoItemChange(Sender: TObject);
begin
  dfValor.Text := FaArrayDinamico[tbSelecaoItem.Position];
end;

end.
