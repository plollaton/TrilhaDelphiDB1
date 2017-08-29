unit ufiguraCirculo;

interface

uses
  uFiguraGeometrica;

type
  TFiguraCirculo = class(TFiguraGeometrica)
  protected
    function EfetuarCalculoArea: integer; override;
    function EfetuarCalculoPerimetro: integer; override;
    function ValidarMedidasCalculo: Boolean; override;
  end;

implementation

uses
  System.SysUtils,
  System.Classes,
  System.Math;


{ TFiguraQuadrado }

function TFiguraCirculo.EfetuarCalculoArea: integer;
begin
  result := 0; //Power((Pi * PrimeiraMedida), 2);
end;

function TFiguraCirculo.EfetuarCalculoPerimetro: integer;
begin
  result := 0; //2 * Pi * PrimeiraMedida;
end;

function TFiguraCirculo.ValidarMedidasCalculo: Boolean;
begin
  result := PrimeiraMedida <> 0;
end;

end.
