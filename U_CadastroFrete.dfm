object TelaCadastroFrete: TTelaCadastroFrete
  Left = 0
  Top = 0
  Caption = 'Cadastro de Frete'
  ClientHeight = 336
  ClientWidth = 681
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object L_NumeroDoPedido: TLabel
    Left = 32
    Top = 76
    Width = 125
    Height = 16
    Caption = 'Numero do Pedido :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_TituloFrete: TLabel
    Left = 200
    Top = 17
    Width = 244
    Height = 33
    Caption = 'Cadastro De Frete'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_Empresa: TLabel
    Left = 392
    Top = 76
    Width = 64
    Height = 16
    Caption = 'Empresa :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_CidadeOrigem: TLabel
    Left = 32
    Top = 119
    Width = 121
    Height = 16
    Caption = 'Cidade de Origem :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_CidadeDestino: TLabel
    Left = 32
    Top = 152
    Width = 125
    Height = 16
    Caption = 'Cidade de Destino :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_TipoDeCarga: TLabel
    Left = 392
    Top = 115
    Width = 97
    Height = 16
    Caption = 'Tipo de Carga :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_Carga: TLabel
    Left = 392
    Top = 152
    Width = 47
    Height = 16
    Caption = 'Carga :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_DiametroDaCarga: TLabel
    Left = 392
    Top = 192
    Width = 130
    Height = 16
    Caption = 'Diametro da Carga :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 392
    Top = 224
    Width = 102
    Height = 16
    Caption = 'Peso da Carga :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_PrazoDeEntrega: TLabel
    Left = 32
    Top = 224
    Width = 121
    Height = 16
    Caption = 'Prazo de Entrega :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_Data: TLabel
    Left = 163
    Top = 207
    Width = 31
    Height = 16
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 163
    Top = 240
    Width = 31
    Height = 16
    Caption = 'Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 296
    Width = 116
    Height = 16
    Caption = 'Valor a ser Pago :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_Distancia: TLabel
    Left = 392
    Top = 256
    Width = 68
    Height = 16
    Caption = 'Distancia :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object E_NumeroPedido: TEdit
    Left = 163
    Top = 71
    Width = 173
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
  end
  object E_Empresa: TEdit
    Left = 462
    Top = 71
    Width = 173
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
  end
  object E_CidadeDeOrigem: TEdit
    Left = 163
    Top = 114
    Width = 173
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
  end
  object E_Destino: TEdit
    Left = 163
    Top = 151
    Width = 173
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 3
  end
  object ListaDeCarga: TComboBox
    Left = 495
    Top = 114
    Width = 140
    Height = 21
    Style = csDropDownList
    TabOrder = 4
  end
  object E_Carga: TEdit
    Left = 462
    Top = 147
    Width = 173
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 5
  end
  object E_DiametroDaCarga: TEdit
    Left = 528
    Top = 187
    Width = 107
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 6
  end
  object E_PesoDaCarga: TEdit
    Left = 512
    Top = 219
    Width = 123
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
  end
  object E_Data: TEdit
    Left = 215
    Top = 209
    Width = 121
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 8
  end
  object E_Hora: TEdit
    Left = 215
    Top = 236
    Width = 121
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 9
  end
  object E_Valor: TEdit
    Left = 163
    Top = 295
    Width = 173
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 10
  end
  object B_Confirma: TButton
    Left = 392
    Top = 293
    Width = 97
    Height = 25
    Caption = 'Confirma'
    TabOrder = 11
  end
  object B_Cancelar: TButton
    Left = 538
    Top = 293
    Width = 97
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 12
  end
  object E_Distancia: TEdit
    Left = 466
    Top = 251
    Width = 169
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 13
  end
  object FDQ_TipoCarga: TFDQuery
    Connection = BancoDeDados.FD_Transportadora
    SQL.Strings = (
      'SELECT Descricao_Carga FROM TB_TipoDeCarga')
    Left = 80
    Top = 24
  end
end
