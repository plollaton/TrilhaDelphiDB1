unit uFiguraGeometrica;

interface

uses
  uFiguraGeometricaAPI, Comum;

type
  TFiguraGeometrica = class(TInterfacedObject, IFiguraGeometricaAPI)
  private
    FnPrimeiraMedida: integer;
    FenTipoCalculo: TTipoCalculo;
  protected
    function ValidarMedidasCalculo: Boolean; virtual; abstract;
    function EfetuarCalculoArea: integer; virtual; abstract;
    function EfetuarCalculoPerimetro: integer; virtual; abstract;
  public
    function Calcular: integer;
    constructor Create; virtual;
    property PrimeiraMedida: integer read FnPrimeiraMedida
      write FnPrimeiraMedida;
    property TipoCalculo: TTipoCalculo read FenTipoCalculo write FenTipoCalculo;
  end;

implementation

{ TFiguraGeometrica }

function TFiguraGeometrica.Calcular: integer;
begin
  result := 0;
  if not ValidarMedidasCalculo then
    exit;

  if FenTipoCalculo = tcArea then
    result := EfetuarCalculoArea
  else
    result := EfetuarCalculoPerimetro;
end;

constructor TFiguraGeometrica.Create;
begin
  FnPrimeiraMedida := 0;
end;

end.
