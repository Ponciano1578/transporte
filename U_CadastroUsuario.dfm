object Tela_CadastroUsuario: TTela_CadastroUsuario
  Left = 0
  Top = 0
  Caption = 'Cadastro Usuario'
  ClientHeight = 155
  ClientWidth = 562
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
  object Label1: TLabel
    Left = 40
    Top = 56
    Width = 73
    Height = 19
    Caption = 'Usuario :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 112
    Width = 61
    Height = 19
    Caption = 'Senha :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 320
    Top = 56
    Width = 59
    Height = 19
    Caption = 'Cargo :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object L_CodigoCargo: TLabel
    Left = 355
    Top = 24
    Width = 24
    Height = 13
    Caption = '____'
  end
  object E_Usuario: TEdit
    Left = 128
    Top = 54
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object E_senha: TEdit
    Left = 128
    Top = 110
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object C_cargo: TComboBox
    Left = 385
    Top = 54
    Width = 145
    Height = 21
    ParentShowHint = False
    ShowHint = False
    TabOrder = 2
    OnChange = C_cargoChange
  end
  object B_Confirma: TButton
    Left = 320
    Top = 108
    Width = 210
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 3
    OnClick = B_ConfirmaClick
  end
  object FDQ_CadastroUsuario: TFDQuery
    Connection = BancoDeDados.FD_Transportadora
    Left = 8
    Top = 120
  end
end
