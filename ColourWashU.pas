unit ColourWashU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  TfrmHLSDemo = class(TForm)
    imgHueRange: TImage;
    Label1: TLabel;
    Label2: TLabel;
    imgSatRange: TImage;
    imgLumRange: TImage;
    Label3: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    TmpBmp: TBitmap;
    procedure MakeHueRangeBmp(Bmp: TBitmap);
    procedure MakeLuminanceRangeBmp(Bmp: TBitmap);
    procedure MakeSaturationRangeBmp(Bmp: TBitmap);
  end;

var
  frmHLSDemo: TfrmHLSDemo;

implementation

{$R *.dfm}

uses
  GraphUtil;

procedure TfrmHLSDemo.FormCreate(Sender: TObject);
begin
  TmpBmp := TBitmap.Create;
  TmpBmp.Width := Screen.Width;
  TmpBmp.Height := Screen.Height;
  MakeHueRangeBmp(TmpBmp);
  imgHueRange.Picture.Bitmap := TmpBmp;
  MakeLuminanceRangeBmp(TmpBmp);
  imgLumRange.Picture.Bitmap := TmpBmp;
  MakeSaturationRangeBmp(TmpBmp);
  imgSatRange.Picture.Bitmap := TmpBmp;
  TmpBmp.Free
end;

procedure TfrmHLSDemo.MakeHueRangeBmp(Bmp: TBitmap);
var
  Hue: Byte;
  LineWidth: Single;
  LineLeft, LineRight: Integer;
const
  HLSMAX = 240;
  Lum = HLSMAX div 2;
  Sat = HLSMAX; //max saturation means most vivid colours
begin
  LineWidth := Bmp.Width / HLSMAX;
  LineLeft := 0;
  for Hue := 0 to HLSMAX do
  begin
    Bmp.Canvas.Brush.Color := ColorHLSToRGB(Hue, Lum, Sat);
    LineRight := Round(Succ(Hue) * LineWidth);
    Bmp.Canvas.FillRect(Rect(LineLeft, 0, LineRight, Bmp.Height));
    LineLeft := LineRight
  end;
end;

procedure TfrmHLSDemo.MakeSaturationRangeBmp(Bmp: TBitmap);
var
  Sat: Byte;
  LineWidth: Single;
  LineLeft, LineRight: Integer;
const
  HLSMAX = 240;
  Lum = HLSMAX div 2;
  Hue = 0; //red
begin
  LineWidth := Bmp.Width / HLSMAX;
  LineLeft := 0;
  for Sat := 0 to HLSMAX do
  begin
    Bmp.Canvas.Brush.Color := ColorHLSToRGB(Hue, Lum, Sat);
    LineRight := Round(Succ(Sat) * LineWidth);
    Bmp.Canvas.FillRect(Rect(LineLeft, 0, LineRight, Bmp.Height));
    LineLeft := LineRight
  end;
end;

procedure TfrmHLSDemo.MakeLuminanceRangeBmp(Bmp: TBitmap);
var
  Lum: Byte;
  LineWidth: Single;
  LineLeft, LineRight: Integer;
const
  HLSMAX = 240;
  Sat = HLSMAX; //max saturation means most vivid colours
  Hue = 0; //red
begin
  LineWidth := Bmp.Width / HLSMAX;
  LineLeft := 0;
  for Lum := 0 to HLSMAX do
  begin
    Bmp.Canvas.Brush.Color := ColorHLSToRGB(Hue, Lum, Sat);
    LineRight := Round(Succ(Lum) * LineWidth);
    Bmp.Canvas.FillRect(Rect(LineLeft, 0, LineRight, Bmp.Height));
    LineLeft := LineRight
  end;
end;

end.
