unit U_CadastroUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TTela_CadastroUsuario = class(TForm)
    Label1: TLabel;
    E_Usuario: TEdit;
    Label2: TLabel;
    E_senha: TEdit;
    Label3: TLabel;
    C_cargo: TComboBox;
    L_CodigoCargo: TLabel;
    B_Confirma: TButton;
    FDQ_CadastroUsuario: TFDQuery;
    procedure FormActivate(Sender: TObject);
    procedure C_cargoChange(Sender: TObject);
    procedure B_ConfirmaClick(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Tela_CadastroUsuario: TTela_CadastroUsuario;

implementation

{$R *.dfm}

uses
U_DataBase , U_Principal;

procedure TTela_CadastroUsuario.B_ConfirmaClick(Sender: TObject);
begin
  BancoDeDados.FD_Transportadora.Connected := true;

  FDQ_CadastroUsuario.SQL.Clear;
  FDQ_CadastroUsuario.SQL.Add('Insert into TB_Usuarios');
  FDQ_CadastroUsuario.SQL.Add('(Nome, senha, codigo_cargo)');
  FDQ_CadastroUsuario.SQL.Add('values (:Nome, :senha, :codigo_cargo)');

  FDQ_CadastroUsuario.ParamByName('Nome').AsString := E_Usuario.Text;
  FDQ_CadastroUsuario.ParamByName('senha').AsString := E_senha.Text;
  FDQ_CadastroUsuario.ParamByName('codigo_cargo').AsString := L_CodigoCargo.Caption ;

 FDQ_CadastroUsuario.ExecSQL;
  if FDQ_CadastroUsuario.RowsAffected > 0 then
  begin

   ShowMessage('Cadastro realizado com sucesso');

  end
 else
  begin

     ShowMessage('Não foi possível cadastrar o usuário');

  end;

  end;

procedure TTela_CadastroUsuario.C_cargoChange(Sender: TObject);
begin

  if C_cargo.ItemIndex >= 0 then           // Verifica se há um item selecionado no ComboBox
  begin

   if FDQ_CadastroUsuario.Locate('cargo', C_cargo.Text, []) then
   begin
     L_CodigoCargo.Caption := FDQ_CadastroUsuario.FieldByName('codigo_cargo').AsString;
   end
  end
  else
  begin

    L_CodigoCargo.Caption := 'Selecione um cargo';  // Se não houver um item selecionado, exibe uma mensagem genérica na Label L_CodigoCargo

  end;


end;

procedure TTela_CadastroUsuario.FormActivate(Sender: TObject);
begin
  BancoDeDados.FD_Transportadora.Connected := True;

  FDQ_CadastroUsuario.SQL.Clear;
  FDQ_CadastroUsuario.SQL.Add('SELECT cargo, codigo_cargo FROM TB_StatusHierarquia ');
  FDQ_CadastroUsuario.Open;

  C_cargo.Clear;

  while not FDQ_CadastroUsuario.Eof do       // o Eof ndica que a posição do registro atual
  begin                                      // é após o último registro em um objeto Recordset.

    C_cargo.AddItem(FDQ_CadastroUsuario.FieldByName('cargo').AsString, nil);
    FDQ_CadastroUsuario.Next;

  end;


end;

end.
