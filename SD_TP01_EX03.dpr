program SD_TP01_EX03;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

Function PGCD(a : Integer ; b : Integer) : Integer;

Var
  res : Integer;

begin

  if (a = 1) OR (b = 1) then
  begin
    res := 1;
  end

  else
  begin
    if a = b then
    begin
      res := a;
    end

    else
    begin

      if a > b then
      begin
        res := PGCD(b, a - b);
      end

      else
      begin
        PGCD(a, b - a);
      end;

    end;


  end;


  Result := res;


end;




begin

  writeln(PGCD(15, 10));

  readln;

end.

