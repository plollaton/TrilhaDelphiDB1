unit principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask;

type
  TTipoFigura = (tfQuadrado, tfCirculo, tfRetangulo);

  TTipoCalculo = (tcArea, tcPerimetro);

  TFCalculoAreaPerimetro = class(TForm)
    Button1: TButton;
    rgTipoFigura: TRadioGroup;
    rgTipoCalculo: TRadioGroup;
    lbPrimeiroValor: TLabel;
    lbSegundoValor: TLabel;
    Label1: TLabel;
    edPrimeiroValor: TMaskEdit;
    edSegundoValor: TMaskEdit;
    procedure Button1Click(Sender: TObject);
    procedure rgTipoFiguraClick(Sender: TObject);
  private
    { Private declarations }
    procedure ConfigurarVisibilidadeCampos;
    procedure ConfigurarLabelCampos;
  public
    { Public declarations }
  end;

function CalcularAreaQuadrado(pnLado: Integer): WideString; stdCall;
  external 'CalculaDadosFiguras.dll' name 'CalcularAreaQuadrado';
function CalcularPerimetroQuadrado(pnLado: Integer): WideString; stdCall;
  external 'CalculaDadosFiguras.dll' name 'CalcularPerimetroQuadrado';
function CalcularAreaCirculo(pnRaio: Integer): WideString; stdCall;
  external 'CalculaDadosFiguras.dll' name 'CalcularAreaCirculo';
function CalcularPerimetroCirculo(pnRaio: Integer): WideString; stdCall;
  external 'CalculaDadosFiguras.dll' name 'CalcularPerimetroCirculo';
function CalcularAreaRetangulo(pnLado1, pnLado2: Integer): WideString; stdCall;
  external 'CalculaDadosFiguras.dll' name 'CalcularAreaRetangulo';
function CalcularPerimetroretangulo(pnLado1, pnLado2: Integer): WideString;
  stdCall; external 'CalculaDadosFiguras.dll' name 'CalcularPerimetroRetangulo';

var
  FCalculoAreaPerimetro: TFCalculoAreaPerimetro;

implementation

{$R *.dfm}

procedure TFCalculoAreaPerimetro.Button1Click(Sender: TObject);
var
  sRetorno: string;

begin
  if (rgTipoFigura.ItemIndex = Integer(tfQuadrado)) and (rgTipoCalculo.ItemIndex = Integer(tcArea)) then
    sRetorno := CalcularAreaQuadrado(StrToInt(trim(edPrimeiroValor.Text)))
  else if (rgTipoFigura.ItemIndex = Integer(tfQuadrado)) and (rgTipoCalculo.ItemIndex = Integer(tcPerimetro)) then
    sRetorno := CalcularPerimetroQuadrado(StrToInt(trim(edPrimeiroValor.Text)))
  else if (rgTipoFigura.ItemIndex = Integer(tfCirculo)) and (rgTipoCalculo.ItemIndex = Integer(tcArea)) then
    sRetorno := CalcularAreaCirculo(StrToInt(trim(edPrimeiroValor.Text)))
  else if (rgTipoFigura.ItemIndex = Integer(tfCirculo)) and (rgTipoCalculo.ItemIndex = Integer(tcPerimetro)) then
    sRetorno := CalcularPerimetroCirculo(StrToInt(trim(edPrimeiroValor.Text)))
  else if (rgTipoFigura.ItemIndex = Integer(tfRetangulo)) and (rgTipoCalculo.ItemIndex = Integer(tcArea)) then
    sRetorno := CalcularAreaRetangulo(StrToInt(trim(edPrimeiroValor.Text)), StrToInt(trim(edSegundoValor.Text)))
  else if (rgTipoFigura.ItemIndex = Integer(tfRetangulo)) and (rgTipoCalculo.ItemIndex = Integer(tcPerimetro)) then
    sRetorno := CalcularPerimetroRetangulo(StrToInt(trim(edPrimeiroValor.Text)), StrToInt(trim(edSegundoValor.Text)));

  ShowMessage(sRetorno);


end;

procedure TFCalculoAreaPerimetro.ConfigurarLabelCampos;
begin
  case TTipoFigura(rgTipoFigura.ItemIndex) of
    tfQuadrado: lbPrimeiroValor.Caption := 'Entre com o lado do quadrado: ';
    tfCirculo: lbPrimeiroValor.Caption := 'Entre com o raio do círculo: ';
    tfRetangulo: lbPrimeiroValor.Caption := 'Entre com o lado maior do retânculo:';
  end;
end;

procedure TFCalculoAreaPerimetro.ConfigurarVisibilidadeCampos;
var
  bConjuntoVisivel: Boolean;
begin
  bConjuntoVisivel := (rgTipoFigura.ItemIndex  = Integer(tfQuadrado))
    or (rgTipoFigura.ItemIndex  = Integer(tfCirculo))
    or (rgTipoFigura.ItemIndex  = Integer(tfRetangulo));
  lbPrimeiroValor.Visible := bConjuntoVisivel;
  edPrimeiroValor.Visible := bConjuntoVisivel;

  bConjuntoVisivel := (rgTipoFigura.ItemIndex  = Integer(tfRetangulo));
  lbSegundoValor.Visible := bConjuntoVisivel;
  edSegundoValor.Visible := bConjuntoVisivel;
end;

procedure TFCalculoAreaPerimetro.rgTipoFiguraClick(Sender: TObject);
begin
  ConfigurarLabelCampos;
  ConfigurarVisibilidadeCampos;
end;

end.
