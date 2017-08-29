program DllCalculo;

uses
  Vcl.Forms,
  principal in 'principal.pas' {FCalculoAreaPerimetro};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFCalculoAreaPerimetro, FCalculoAreaPerimetro);
  Application.Run;
end.
