unit uFiguraQuadrado;

interface

uses
  uFiguraGeometrica;

type
  TFiguraQuadrado = class(TFiguraGeometrica)
  protected
    function EfetuarCalculoArea: integer; override;
    function EfetuarCalculoPerimetro: integer; override;
    function ValidarMedidasCalculo: Boolean; override;
  end;

implementation

{ TFiguraQuadrado }

function TFiguraQuadrado.EfetuarCalculoArea: integer;
begin
  result := PrimeiraMedida * PrimeiraMedida;
end;

function TFiguraQuadrado.EfetuarCalculoPerimetro: integer;
begin
  result := PrimeiraMedida * 4;
end;

function TFiguraQuadrado.ValidarMedidasCalculo: Boolean;
begin
  result := PrimeiraMedida <> 0;
end;

end.
