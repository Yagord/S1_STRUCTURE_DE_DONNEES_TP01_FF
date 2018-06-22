program SD_TP01_EX04;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

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




Var
  nbDisques : Integer;
  nbCoups : Integer;

begin

  nbCoups := 1;

  writeln('Saisir le nombre de disques :');

  readln(nbDisques);

  writeln('-----------------------');

  writeln('Coup(s)    Déplacement');

  hanoi(nbDisques, '1', '2', '3', nbCoups);

  readln;

end.
