object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Criptografa texto'
  ClientHeight = 442
  ClientWidth = 726
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 8
    Top = 356
    Width = 105
    Height = 15
    Caption = 'Chave Criptografica'
  end
  object Edit1: TEdit
    Left = 32
    Top = 24
    Width = 226
    Height = 23
    TabOrder = 0
    Text = 'Teste de Cripto'
  end
  object Edit2: TEdit
    Left = 184
    Top = 88
    Width = 226
    Height = 23
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 392
    Top = 152
    Width = 226
    Height = 23
    TabOrder = 2
  end
  object Button1: TButton
    Left = 216
    Top = 259
    Width = 109
    Height = 42
    Caption = 'Criptografa'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 376
    Top = 259
    Width = 109
    Height = 42
    Caption = 'Descripitografa'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 376
    Width = 710
    Height = 63
    Lines.Strings = (
      'YUQL@23$Lg23D'
      
        '$5F90WgI5&E1JADS4F67hNMjCfgyjhXfghXfghLfg6hJAgfOhAfgUhWfgWhMfgCh' +
        'L0AOMfMgh4nA4jhVylkZL9YUQL@23$Lg23D'
      
        '$5F90WgI5&E1JADS4F67hNMjCfgyjhXfghXfghLfg6hJAgfOhAfgUhWfgWhMfgCh' +
        'L0AOMfMgh4nA4jhVylkZL98YUQL@23$Lg23D'
      
        '$5F90WgI5&E1JADS4F67hNMjCfgyjhXfghXfghLfg6hJAgfOhAfgUhWfgWhMfgCh' +
        'L0AOMfMgh4nA4jhVylkZL9YUQL@23$Lg23D'
      
        '$5F90WgI5&E1JADS4F67hNMjCfgyjhXfghXfghLfg6hJAgfOhAfgUhWfgWhMfgCh' +
        'L0AOMfMgh4nA4jhVylkZL989')
    TabOrder = 5
  end
end
