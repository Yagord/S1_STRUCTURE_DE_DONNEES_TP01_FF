program SD_TP01_EX_UNIT;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Unit_SD_TP01_EX_UNIT in 'Unit_SD_TP01_EX_UNIT.pas';

{begin

  writeln(sommeNPremiersNombre(4));

  readln;

end.}



{begin

  writeln(PGCD(15, 10));

  readln;

end.}



{Var
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

end.}
