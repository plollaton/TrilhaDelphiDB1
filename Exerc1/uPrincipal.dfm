object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 202
  ClientWidth = 258
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 88
    Width = 118
    Height = 13
    Caption = 'Quantidade itens array: '
  end
  object lbQtdItens: TLabel
    Left = 152
    Top = 88
    Width = 6
    Height = 13
    Caption = '0'
  end
  object dfValor: TEdit
    Left = 8
    Top = 14
    Width = 237
    Height = 21
    TabOrder = 0
  end
  object btIncluir: TButton
    Left = 8
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 1
    OnClick = btIncluirClick
  end
  object btExcluir: TButton
    Left = 89
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Excluir'
    TabOrder = 2
    OnClick = btExcluirClick
  end
  object btAlterar: TButton
    Left = 170
    Top = 48
    Width = 75
    Height = 25
    Caption = 'Alterar'
    TabOrder = 3
    OnClick = btAlterarClick
  end
  object tbSelecaoItem: TTrackBar
    Left = 8
    Top = 136
    Width = 237
    Height = 45
    PageSize = 1
    PositionToolTip = ptTop
    TabOrder = 4
    TickMarks = tmBoth
    OnChange = tbSelecaoItemChange
  end
end
