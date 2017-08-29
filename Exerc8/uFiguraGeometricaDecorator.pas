unit uFiguraGeometricaDecorator;

interface

uses
  ufiguraGeometricaAPI;

type
  TFiguraGeometricaDecorator = class
  private
    FoFigura: IFiguraGeometricaAPI;
    function RetornarNumeroExtenso(pnNumero: integer): string;
    function Extenso(pnNumero: integer): string;
  public
    function Calcular: string;
    constructor Create(poFigura: IFiguraGeometricaAPI);
  end;

implementation

uses SysUtils, System.StrUtils, Vcl.dialogs;

const
  aUnidade: array [1 .. 19] of string = ('um', 'dois', 'três', 'quatro',
    'cinco', 'seis', 'sete', 'oito', 'nove', 'dez', 'onze', 'doze', 'treze', 'quatorze',
    'quinze', 'dezesseis', 'dezessete', 'dezoito', 'dezenove');
  aDezenas: array [1 .. 9] of string = ('dez', 'vinte', 'trinta', 'quarenta',
    'cinquenta', 'sessenta', 'setenta', 'oitenta', 'noventa');
  aCentenas: array [1 .. 9] of string = ('cento', 'duzentos', 'trezentos',
    'quatrocentos', 'quinhentos', 'seiscentos', 'setecentos', 'oitocentos',
    'novecentos');

  { TFiguraGeometricaDecorator }

function TFiguraGeometricaDecorator.Calcular: string;
var
  nResultado: integer;
begin
  nResultado := FoFigura.Calcular;

  result := RetornarNumeroExtenso(nResultado);
end;

constructor TFiguraGeometricaDecorator.Create(poFigura: IFiguraGeometricaAPI);
begin
  FoFigura := poFigura;
end;

function TFiguraGeometricaDecorator.Extenso(pnNumero: integer): string;
begin
  case pnNumero of
    1 .. 19:
      result := aUnidade[pnNumero];
    20, 30, 40, 50, 60, 70, 80, 90:
      result := aDezenas[pnNumero div 10];
    21 .. 29, 31 .. 39, 41 .. 49, 51 .. 59, 61 .. 69, 71 .. 79, 81 .. 89,
      91 .. 99:
      result := aDezenas[pnNumero div 10] + ' e ' + aUnidade[pnNumero mod 10];
    200, 300, 400, 500, 600, 700, 800, 900:
      result := aCentenas[pnNumero div 100];
    101 .. 199, 201 .. 299, 301 .. 399, 401 .. 499, 501 .. 599, 601 .. 699,
      701 .. 799, 801 .. 899, 901 .. 999:
      result := aCentenas[pnNumero div 100] + ' e ' + Extenso(pnNumero mod 100);
    1000 .. 999999:
      result := Extenso(pnNumero div 1000) + ' mil, ' + Extenso(pnNumero mod 1000);
  end;
end;

function TFiguraGeometricaDecorator.RetornarNumeroExtenso
  (pnNumero: integer): string;
begin
  result := Extenso(pnNumero);
end;

end.
