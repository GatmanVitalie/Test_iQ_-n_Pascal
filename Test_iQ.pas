program iQ;
var
  input : string;
  punct, virgula : boolean;
  i : integer;
  begin
 punct := false;
 virgula := false;
    Writeln('Program care vă poate calcula iQ-ul cu o precizie de 90%');
    Write('Pentru a vă calcula iQ-ul vă rugăm si introduceți opropoziție oarecare: ');
    read(input);
    for i:=1 to input.Length do
    begin
      if ((input[i] = '.') or (input[i] = '!')) then punct := true;
      if input[i] = ',' then virgula := true;
    end;
    Write('Scorul dumneavoastră de iQ este ');
    if  ((input.Length > 200) and (punct = true) and (virgula = true)) then Write('peste 110iQ')
    else if ((punct = true) and (virgula = true)) then Write('între 90iQ-110iQ')
    else if  (punct = true) then Write('între 70iQ-90iQ')
    else Write('sub 70iQ');
  
  end.