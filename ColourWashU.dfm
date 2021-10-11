object frmHLSDemo: TfrmHLSDemo
  Left = 235
  Top = 124
  Width = 602
  Height = 399
  Caption = 'HLS color formats'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  DesignSize = (
    594
    371)
  PixelsPerInch = 120
  TextHeight = 16
  object imgHueRange: TImage
    Left = 8
    Top = 32
    Width = 577
    Height = 89
    Anchors = [akLeft, akTop, akRight]
    Stretch = True
  end
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 139
    Height = 16
    Caption = 'Hue going from 0 to 240'
  end
  object Label2: TLabel
    Left = 8
    Top = 128
    Width = 174
    Height = 16
    Caption = 'Saturation going from 0 to 240'
  end
  object imgSatRange: TImage
    Left = 8
    Top = 152
    Width = 577
    Height = 89
    Anchors = [akLeft, akTop, akRight]
    Stretch = True
  end
  object imgLumRange: TImage
    Left = 8
    Top = 272
    Width = 577
    Height = 89
    Anchors = [akLeft, akTop, akRight]
    Stretch = True
  end
  object Label3: TLabel
    Left = 8
    Top = 248
    Width = 179
    Height = 16
    Caption = 'Luminance going from 0 to 240'
  end
end
