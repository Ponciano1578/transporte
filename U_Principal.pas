unit U_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls;

type
  TTelaPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    M_Cadastro: TMenuItem;
    M_CadastroFrete: TMenuItem;
    L_NomeEmpresa: TLabel;
    M_CadastroMotorista: TMenuItem;
    C1: TMenuItem;
    rabalho1: TMenuItem;
    Fretes1: TMenuItem;
    Motoristas1: TMenuItem;
    Empresas1: TMenuItem;
    Historico1: TMenuItem;
    Contabilidade1: TMenuItem;
    HistoricodeFretes1: TMenuItem;
    Financeiro1: TMenuItem;
    Fiscal1: TMenuItem;
    M_CadastroUsuario: TMenuItem;
    N1: TMenuItem;
    procedure M_CadastroFreteClick(Sender: TObject);
    procedure M_CadastroUsuarioClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaPrincipal: TTelaPrincipal;

implementation

{$R *.dfm}

uses
U_CadastroFrete, U_Login, U_DataBase, U_CadastroUsuario;



procedure TTelaPrincipal.M_CadastroFreteClick(Sender: TObject);
  begin
     TelaCadastroFrete:=TTelaCadastroFrete.Create(self);

     try

       TelaCadastroFrete.ShowModal;

     finally
        FreeAndNil(TelaCadastroFrete);
    end;

  end;

procedure TTelaPrincipal.M_CadastroUsuarioClick(Sender: TObject);
  begin
     Tela_CadastroUsuario:=TTela_CadastroUsuario.Create(self);

     try

       Tela_CadastroUsuario.ShowModal;

     finally
        FreeAndNil(Tela_CadastroUsuario);
    end;

  end;

end.
