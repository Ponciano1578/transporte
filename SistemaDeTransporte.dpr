program SistemaDeTransporte;

uses
  Vcl.Forms,
  U_Principal in 'U_Principal.pas' {TelaPrincipal},
  U_CadastroFrete in 'U_CadastroFrete.pas' {TelaCadastroFrete},
  U_DataBase in 'U_DataBase.pas' {BancoDeDados: TDataModule},
  Vcl.Themes,
  Vcl.Styles,
  U_Login in 'U_Login.pas' {Tela_Login},
  U_CadastroUsuario in 'U_CadastroUsuario.pas' {Tela_CadastroUsuario};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Charcoal Dark Slate');
  Application.CreateForm(TTela_Login, Tela_Login);
  Application.CreateForm(TBancoDeDados, BancoDeDados);
  Application.CreateForm(TTela_CadastroUsuario, Tela_CadastroUsuario);
  Application.Run;
end.
