program SD_TP01_EX02;

{$APPTYPE CONSOLE}

{$R *.res}

Function sommeNPremiersNombre(n : Integer) : Integer;

Var
  res : Integer;

begin

  res := 0;

  if (n = 0) OR (n = 1) then
  begin

    res := n;

  end


  else
  begin

    res := n + sommeNPremiersNombre(n - 1);

  end;

  Result := res;

end;




Var
  nb : Integer;


begin

  writeln(sommeNPremiersNombre(4));

  readln;

end.