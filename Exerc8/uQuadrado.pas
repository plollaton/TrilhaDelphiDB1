unit uQuadrado;

interface

uses
  uFiguraGeometricaDecorator;

type
  TQuadradoDecorator = class(TFiguraGeometricaDecorator)
  public
    function Calcular: Double; override;
  end;

implementation

{ TQuadradoDecorator }

function TQuadradoDecorator.Calcular: Double;
begin

end;

end.
