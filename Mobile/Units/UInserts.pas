unit UInserts;

interface

uses DmGlobal;

procedure InserirCliente (NOME, Tel1, Tel2, CPF, EMAIL, OBS : string);

procedure InserirProcedimento (Desc, Status: string; valor: REAL);

implementation
procedure InserirCliente (NOME, Tel1, Tel2, CPF, EMAIL, OBS : string);
begin
    Dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('Insert into Cliente (nome, cpf, telefone1, telefone2, email, obs) values (?, ?, ?, ?, ?, ?)');
    dm.Query1.Params[0].AsString := NOME;
    dm.Query1.Params[1].AsString := CPF;
    dm.Query1.Params[2].AsString := TEL1;
    dm.Query1.Params[3].AsString := TEL2;
    dm.Query1.Params[4].AsString := EMAIL;
    dm.Query1.Params[5].AsString := OBS;

    Dm.Query1.ExecSQL;


end;

procedure InserirProcedimento (Desc, Status: string; valor: REAL);
begin
    Dm.Query1.Close;
    dm.Query1.SQL.Clear;
    dm.Query1.SQL.Add('Insert into PROCEDIMENTO (descricao, valor, ativo) values (?, ?, ?)');
    dm.Query1.Params[0].AsString := DESC;
    dm.Query1.Params[1].AsString := STATUS;
    dm.Query1.Params[2].AsfLOAT := VALOR;


    Dm.Query1.ExecSQL;
end;


end.
