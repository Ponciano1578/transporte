unit U_Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TTela_Login = class(TForm)
    E_Usuario: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    E_Senha: TEdit;
    B_ConfirmarUsuario: TButton;
    FD_Usuario: TFDQuery;
    FD_UsuarioNome: TStringField;
    FD_Usuariosenha: TStringField;
    procedure B_ConfirmarUsuarioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tela_Login: TTela_Login;


implementation

{$R *.dfm}

uses
U_principal, U_DataBase;

procedure TTela_Login.B_ConfirmarUsuarioClick(Sender: TObject);

begin

 //Conectar o banco de dados quando esta em uma unit separada
 BancoDeDados.FD_Transportadora.Connected := True;

 FD_Usuario.SQL.Clear;
 FD_Usuario.SQL.Add('Select * from TB_Usuarios where Nome = :Nome and senha = :senha');
 FD_Usuario.ParamByName('Nome').AsString := E_Usuario.Text;
 FD_Usuario.ParamByName('senha').AsString := E_Senha.Text;
 FD_Usuario.Open;

  if FD_Usuario.RecordCount <> 0 then
    begin

      TelaPrincipal := TTelaPrincipal.Create(Self);
      TelaPrincipal.ShowModal;
      Tela_Login.Close;

     end

  else

  begin

    ShowMessage('Usuário ou senha inválidos');

   end;


  end;


end.
