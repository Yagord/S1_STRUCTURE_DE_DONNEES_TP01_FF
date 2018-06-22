program SD_TP01_EXSUPP02;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;


Function compressionOctet (chaine : String) : String;

Var
  chaineCompresse : String;
  i : Integer;
  cptCaractere : Integer;


begin

  cptCaractere := 1;
  chaineCompresse := '';

  for i := 1 to length(chaine) do
  begin

    if chaine[i] = chaine[i + 1] then
    begin

      cptCaractere := cptCaractere + 1;

    end

    else
    begin

      if i = 1 then
      begin
        chaineCompresse := chaineCompresse + chaine[i];
      end

      else
      begin
        chaineCompresse := chaineCompresse + IntToStr(cptCaractere) + chaine[i];
      end;

      cptCaractere := 1;

    end;

  end;

  Result := chaineCompresse;

end;



Function decompressionOctet (chaine : String) : String;

Var
  chaineDecompresse : String;
  i : Integer;
  j : Integer;

begin

  chaineDecompresse := '';

  if (chaine[1] = '0') OR (chaine[1] = '1') then
  begin
    chaineDecompresse := chaineDecompresse + chaine[1];
  end;

  for i := 1 to length(chaine) do
  begin

    if (chaine[i] <> '0') AND (chaine[i] <> '1') then
    begin

      for j := 1 to StrToInt(chaine[i]) do
      begin
        chaineDecompresse := chaineDecompresse + chaine[i + 1]
      end;

    end;

  end;

  Result := chaineDecompresse;

end;




Var
  chaine : String;
  chaine2 : String;
  test : Boolean;
  a : Integer;


begin

  chaine := '10001100';
  chaine2 := '120314051';
  a := 0;

  writeln(compressionOctet(chaine));

  {test := TryStrToInt('0', a);

  if test = False then writeln('Faux')
  else writeln('Vrai');}

  writeln(decompressionOctet(chaine2));


  readln;

end.
