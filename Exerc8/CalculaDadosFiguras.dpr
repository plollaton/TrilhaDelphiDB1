library CalculaDadosFiguras;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  System.SysUtils,
  System.Classes,
  System.Math,
  uFiguraGeometrica in 'uFiguraGeometrica.pas',
  ufiguraGeometricaAPI in 'ufiguraGeometricaAPI.pas',
  uFiguraGeometricaDecorator in 'uFiguraGeometricaDecorator.pas',
  uFiguraQuadrado in 'uFiguraQuadrado.pas',
  Comum,
  uFiguraCirculo in 'uFiguraCirculo.pas',
  uFiguraRetangulo in 'uFiguraRetangulo.pas';

{$R *.res}

function CalcularAreaQuadrado(pnLado: Integer): WideString; stdCall;
var
  oQuadrado: TFiguraQuadrado;
  oQuadradoDecorator: TFiguraGeometricaDecorator;
begin
  oQuadrado := TFiguraQuadrado.Create;
  oQuadradoDecorator := TFiguraGeometricaDecorator.Create(oQuadrado);
  try
    oQuadrado.PrimeiraMedida := pnLado;
    oQuadrado.TipoCalculo := tcArea;
    result := oQuadradoDecorator.Calcular;
  finally
    FreeAndNil(oQuadradoDecorator);
  end;
end;

function CalcularPerimetroQuadrado(pnLado: Integer): WideString; stdCall;
var
  oQuadrado: TFiguraQuadrado;
  oQuadradoDecorator: TFiguraGeometricaDecorator;
begin
  oQuadrado := TFiguraQuadrado.Create;
  oQuadradoDecorator := TFiguraGeometricaDecorator.Create(oQuadrado);
  try
    oQuadrado.PrimeiraMedida := pnLado;
    oQuadrado.TipoCalculo := tcPerimetro;
    result := oQuadradoDecorator.Calcular;
  finally
    FreeAndNil(oQuadradoDecorator);
  end;
end;

function CalcularAreaCirculo(pnRaio: Integer): WideString; stdCall;
var
  oCirculo: TFiguraCirculo;
  oQuadradoDecorator: TFiguraGeometricaDecorator;
begin
  oCirculo := TFiguraCirculo.Create;
  oQuadradoDecorator := TFiguraGeometricaDecorator.Create(oCirculo);
  try
    oCirculo.PrimeiraMedida := pnRaio;
    oCirculo.TipoCalculo := tcArea;
    result := oQuadradoDecorator.Calcular;
  finally
    FreeAndNil(oQuadradoDecorator);
  end;
end;

function CalcularPerimetroCirculo(pnRaio: Integer): WideString; stdCall;
var
  oCirculo: TFiguraCirculo;
  oFiguraDecorator: TFiguraGeometricaDecorator;
begin
  oCirculo := TFiguraCirculo.Create;
  oFiguraDecorator := TFiguraGeometricaDecorator.Create(oCirculo);
  try
    oCirculo.PrimeiraMedida := pnRaio;
    oCirculo.TipoCalculo := tcPerimetro;
    result := oFiguraDecorator.Calcular;
  finally
    FreeAndNil(oFiguraDecorator);
  end;
end;

function CalcularAreaRetangulo(pnLado1, pnLado2: Integer): WideString; stdCall;
var
  oRetangulo: TFiguraRetangulo;
  oFiguraDecorator: TFiguraGeometricaDecorator;
begin
  oRetangulo := TFiguraRetangulo.Create;
  oFiguraDecorator := TFiguraGeometricaDecorator.Create(oRetangulo);
  try
    oRetangulo.PrimeiraMedida := pnLado1;
    oRetangulo.SegundaMedida := pnLado2;
    oRetangulo.TipoCalculo := tcPerimetro;
    result := oFiguraDecorator.Calcular;
  finally
    FreeAndNil(oFiguraDecorator);
  end;
end;

function CalcularPerimetroRetangulo(pnLado1, pnLado2: Integer)
  : WideString; stdCall;
var
  oRetangulo: TFiguraRetangulo;
  oFiguraDecorator: TFiguraGeometricaDecorator;
begin
  oRetangulo := TFiguraRetangulo.Create;
  oFiguraDecorator := TFiguraGeometricaDecorator.Create(oRetangulo);
  try
    oRetangulo.PrimeiraMedida := pnLado1;
    oRetangulo.SegundaMedida := pnLado2;
    oRetangulo.TipoCalculo := tcPerimetro;
    result := oFiguraDecorator.Calcular;
  finally
    FreeAndNil(oFiguraDecorator);
  end;
end;

exports
  CalcularAreaQuadrado,
  CalcularPerimetroQuadrado,
  CalcularAreaCirculo,
  CalcularPerimetroCirculo,
  CalcularAreaRetangulo,
  CalcularPerimetroRetangulo;

end.
