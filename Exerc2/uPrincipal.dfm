object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 488
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    748
    488)
  PixelsPerInch = 96
  TextHeight = 13
  object rgTipoDado: TRadioGroup
    Left = 8
    Top = 8
    Width = 732
    Height = 41
    Anchors = [akLeft, akTop, akRight]
    Caption = '  Tipo de dado  '
    Columns = 3
    Items.Strings = (
      'Numeros'
      'Strings'
      'Data')
    TabOrder = 0
  end
  object Edit1: TEdit
    Left = 56
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
end
