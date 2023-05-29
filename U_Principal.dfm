object TelaPrincipal: TTelaPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 164
  ClientWidth = 496
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object L_NomeEmpresa: TLabel
    Left = 32
    Top = 40
    Width = 426
    Height = 70
    Caption = 'Transportadora Ponciano'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -35
    Font.Name = 'BalooBhaina'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Left = 24
    Top = 104
    object M_Cadastro: TMenuItem
      Caption = 'Cadastro'
      object M_CadastroFrete: TMenuItem
        Caption = 'Cadastro de Frete'
        OnClick = M_CadastroFreteClick
      end
      object M_CadastroMotorista: TMenuItem
        Caption = 'Cadastro Motorista'
      end
      object C1: TMenuItem
        Caption = 'Cadastro Empresa'
      end
      object N1: TMenuItem
        Caption = '-------------------'
      end
      object M_CadastroUsuario: TMenuItem
        Caption = 'Cadastro Usuario'
        OnClick = M_CadastroUsuarioClick
      end
    end
    object rabalho1: TMenuItem
      Caption = 'Gerenciamento'
      object Fretes1: TMenuItem
        Caption = 'Fretes'
      end
      object Motoristas1: TMenuItem
        Caption = 'Motoristas'
      end
      object Empresas1: TMenuItem
        Caption = 'Empresas'
      end
    end
    object Historico1: TMenuItem
      Caption = 'Historico'
      object HistoricodeFretes1: TMenuItem
        Caption = 'Historico de Fretes'
      end
    end
    object Contabilidade1: TMenuItem
      Caption = 'Contabilidade'
      object Financeiro1: TMenuItem
        Caption = 'Financeiro'
      end
      object Fiscal1: TMenuItem
        Caption = 'Fiscal'
      end
    end
  end
end
