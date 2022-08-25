program e032;
var a, b: real;
var c: integer;
 
begin
	read(a, c);
	writeln(a:0:2);
	b:= 0;
	case c of
		101: b:=(a * 1.1);
		102: b:=(a * 1.2);
		103: b:=(a * 1.3);
		else b:=(a * 1.4);
	end;
	writeln(b:0:2);
	writeln((b - a):0:2);
end.