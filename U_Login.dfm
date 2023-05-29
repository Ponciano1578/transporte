object Tela_Login: TTela_Login
  Left = 0
  Top = 0
  Align = alCustom
  Caption = 'Login'
  ClientHeight = 161
  ClientWidth = 390
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 104
    Top = 16
    Width = 79
    Height = 23
    Caption = 'Usuario '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 112
    Top = 88
    Width = 58
    Height = 23
    Caption = 'Senha'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object E_Usuario: TEdit
    Left = 56
    Top = 45
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object E_Senha: TEdit
    Left = 56
    Top = 117
    Width = 161
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object B_ConfirmarUsuario: TButton
    Left = 246
    Top = 73
    Width = 107
    Height = 34
    Caption = 'Entrar'
    TabOrder = 2
    OnClick = B_ConfirmarUsuarioClick
  end
  object FD_Usuario: TFDQuery
    Connection = BancoDeDados.FD_Transportadora
    Left = 344
    Top = 120
    object FD_UsuarioNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 50
    end
    object FD_Usuariosenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
    end
  end
end
