unit uFiguraRetangulo;

interface

uses
  uFiguraGeometrica;

type
  TFiguraRetangulo = class(TFiguraGeometrica)
  private
    FnSegundaMedida: Integer;
  protected
    function EfetuarCalculoArea: integer; override;
    function EfetuarCalculoPerimetro: integer; override;
    function ValidarMedidasCalculo: Boolean; override;
  public
    property SegundaMedida: Integer read FnSegundaMedida write FnSegundaMedida;
  end;

implementation

uses
  System.SysUtils,
  System.Classes,
  System.Math;

{ TFiguraQuadrado }

function TFiguraRetangulo.EfetuarCalculoArea: integer;
begin
  result := PrimeiraMedida * SegundaMedida;
end;

function TFiguraRetangulo.EfetuarCalculoPerimetro: integer;
begin
  result := (PrimeiraMedida * 2) + (SegundaMedida * 2);
end;

function TFiguraRetangulo.ValidarMedidasCalculo: Boolean;
begin
  result := (PrimeiraMedida <> 0) and (SegundaMedida <> 0);
end;

end.

