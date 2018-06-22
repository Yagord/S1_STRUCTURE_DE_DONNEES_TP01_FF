program SD_TP01_EXSUPP01;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;


Function inverse (chaine : String) : String;

Var
  chaineTemp : String;
  chaineInverse : String;
  i : Integer;

begin

  chaineTemp := lowercase(chaine);
  chaineInverse := '';

  for i := length(ChaineTemp) downto 1 do
  begin

    chaineInverse := chaineInverse + chaineTemp[i]

  end;

  Result := chaineInverse;

end;



Function estPalindrome (chaine1 : String ; chaine2 : String) : Boolean;

Var
  res : Boolean;

begin

  if chaine1 = chaine2 then
  begin
    res := True;
  end

  else
  begin
    res := False;
  end;

  Result := res;

end;




Var
  chaine1 : String;
  chaine2 : String;

begin

 chaine1 := 'bravo';
 chaine2 := inverse(chaine1);

 writeln(chaine1);
 writeln(chaine2);

 if estpalindrome(chaine1, chaine2) = True then
 begin
   writeln('C''est un palindrome.');
 end

 else
 begin
   writeln('Ce n''est pas un palindrome.');
 end;

 readln;

end.
