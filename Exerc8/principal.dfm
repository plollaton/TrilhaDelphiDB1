object FCalculoAreaPerimetro: TFCalculoAreaPerimetro
  Left = 0
  Top = 0
  Caption = 'Calcule a '#225'rea e o per'#237'metro'
  ClientHeight = 271
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    435
    271)
  PixelsPerInch = 96
  TextHeight = 13
  object lbPrimeiroValor: TLabel
    Left = 8
    Top = 144
    Width = 70
    Height = 13
    Caption = 'lbPrimeiroValor'
    Visible = False
  end
  object lbSegundoValor: TLabel
    Left = 8
    Top = 186
    Width = 216
    Height = 13
    Caption = 'Informe o valor do lado menor do ret'#226'ngulo: '
    Visible = False
  end
  object Label1: TLabel
    Left = 8
    Top = 123
    Width = 197
    Height = 13
    Caption = 'Os valores devem ser informados em cm.'
  end
  object Button1: TButton
    Left = 172
    Top = 238
    Width = 75
    Height = 25
    Caption = 'Calcular'
    TabOrder = 0
    OnClick = Button1Click
  end
  object rgTipoFigura: TRadioGroup
    Left = 4
    Top = 4
    Width = 427
    Height = 51
    Anchors = [akLeft, akTop, akRight]
    Caption = ' Selecione a Figura '
    Columns = 3
    Items.Strings = (
      'Quadrado'
      'C'#237'rculo'
      'Ret'#226'ngulo')
    TabOrder = 1
    OnClick = rgTipoFiguraClick
  end
  object rgTipoCalculo: TRadioGroup
    Left = 4
    Top = 61
    Width = 427
    Height = 52
    Caption = ' Selecione o tipo de c'#225'lculo '
    Columns = 2
    Items.Strings = (
      #193'rea'
      'Per'#237'metro')
    TabOrder = 2
  end
  object edPrimeiroValor: TMaskEdit
    Left = 8
    Top = 159
    Width = 120
    Height = 21
    EditMask = '99999999'
    MaxLength = 8
    TabOrder = 3
    Text = '        '
    Visible = False
  end
  object edSegundoValor: TMaskEdit
    Left = 8
    Top = 201
    Width = 120
    Height = 21
    EditMask = '99999999'
    MaxLength = 8
    TabOrder = 4
    Text = '        '
    Visible = False
  end
end
