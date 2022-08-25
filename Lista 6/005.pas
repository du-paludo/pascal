program e005;
var angulo, tg: real;

function seno (x: real): real;
var termo, numerador, fat: real;
	sinal, i: integer;
begin
	seno:= x;
	fat:= 1;
	sinal:= 1;
	numerador:= x;
	for i:= 1 to 5 do
	begin
		numerador:= numerador * x*x;
		fat:= fat * 2*i * (2*i+1);
		termo:= numerador/fat; 
		sinal:= -sinal;
		seno:= seno + sinal*termo;
	end;
end;
	
function cosseno (x: real): real;
var termo, numerador, fat: real;
	sinal, i: integer;
begin
	cosseno:= 1;
	fat:= 1;
	sinal:= 1;
	numerador:= 1;
	for i:= 1 to 5 do
	begin
		numerador:= numerador * x*x;
		fat:= fat * 2*i * (2*i-1);
		termo:= numerador/fat;
		sinal:= -sinal;
		cosseno:= cosseno + sinal*termo;
	end;
end;

function existe_tangente (x: real; var tg: real): boolean;
begin
	existe_tangente:= false;
	if cosseno(angulo) <> 0 then
	begin
		existe_tangente:= true;
		tg:= seno(angulo)/cosseno(angulo);
	end;
end;

begin
    read(angulo);
    if existe_tangente(angulo, tg) then
        writeln(tg:0:3)
    else
        writeln('nao existe tangente de ',angulo:0:3);
end.