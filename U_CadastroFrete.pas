unit U_CadastroFrete;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TTelaCadastroFrete = class(TForm)
    L_NumeroDoPedido: TLabel;
    E_NumeroPedido: TEdit;
    L_TituloFrete: TLabel;
    L_Empresa: TLabel;
    E_Empresa: TEdit;
    L_CidadeOrigem: TLabel;
    E_CidadeDeOrigem: TEdit;
    L_CidadeDestino: TLabel;
    E_Destino: TEdit;
    L_TipoDeCarga: TLabel;
    ListaDeCarga: TComboBox;
    L_Carga: TLabel;
    E_Carga: TEdit;
    L_DiametroDaCarga: TLabel;
    E_DiametroDaCarga: TEdit;
    Label1: TLabel;
    E_PesoDaCarga: TEdit;
    L_PrazoDeEntrega: TLabel;
    L_Data: TLabel;
    Label2: TLabel;
    E_Data: TEdit;
    E_Hora: TEdit;
    Label3: TLabel;
    E_Valor: TEdit;
    B_Confirma: TButton;
    B_Cancelar: TButton;
    L_Distancia: TLabel;
    E_Distancia: TEdit;
    FDQ_TipoCarga: TFDQuery;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TelaCadastroFrete: TTelaCadastroFrete;

implementation

{$R *.dfm}

uses
U_Principal, U_DataBase;



procedure TTelaCadastroFrete.FormActivate(Sender: TObject);
begin

  BancoDeDados.FD_Transportadora.Connected := True;

  FDQ_TipoCarga.SQL.Clear;
  FDQ_TipoCarga.SQL.Add('Select Descricao_Carga From TB_TipoDeCarga ');
  FDQ_TipoCarga.Open;

  ListaDeCarga.Clear;

  while not FDQ_TipoCarga.Eof do       // o Eof ndica que a posição do registro atual
  begin                                // é após o último registro em um objeto Recordset.

    ListaDeCarga.AddItem(FDQ_TipoCarga.FieldByName('Descricao_Carga').AsString, nil);
    FDQ_TipoCarga.Next;

  end;
end;

end.
