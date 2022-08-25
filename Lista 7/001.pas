program e001;
type vetor = array [1..200] of real;
var v: vetor;
	n, i: integer;
	num, den: real;

begin
	read(n);
	num:= 0;
	den:= 0;
	for i:= 1 to n do
	begin
		read(v[i]);
		if (i mod 2 = 0) and (v[i] > 0) then
			num:= num + v[i]
		else if (i mod 2 <> 0) and (v[i] < 0) then
			den:= den + v[i];
	end;
	if n = 0 then
		writeln('vetor vazio')
	else if den = 0 then
		writeln('divisao por zero')
	else
		writeln((num/den):0:2);
end.