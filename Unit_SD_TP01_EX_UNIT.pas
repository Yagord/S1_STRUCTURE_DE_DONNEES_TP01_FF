unit Unit_SD_TP01_EX_UNIT;

interface

  Function sommeNPremiersNombre(n : Integer) : Integer;

  Function PGCD(a : Integer ; b : Integer) : Integer;

  Procedure hanoi(n : Integer ; Deb : String ; Inter : String ; Fin : String ; var nbCoups : Integer);



implementation

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

  Procedure hanoi(n : Integer ; Deb : String ; Inter : String ; Fin : String ; var nbCoups : Integer);

  begin

    if n = 1 then
    begin
      writeln(nbCoups : 4, '        ', Deb, ' ---> ', Fin);
      nbCoups := nbCoups + 1;
    end

    else
    begin
      hanoi(n - 1, Deb, Fin, Inter, nbCoups);
      hanoi(1, Deb, Inter, Fin, nbCoups);
      hanoi(n - 1, Inter, Deb, Fin, nbCoups);

    end;

  end;

end.



