program ColourWash;

uses
  Forms,
  ColourWashU in 'ColourWashU.pas' {frmHLSDemo};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmHLSDemo, frmHLSDemo);
  Application.Run;
end.
