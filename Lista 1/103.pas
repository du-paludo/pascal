program e103;
var cos, d, hip, h, sen: real;

begin
	read(cos, d);
	sen:= sqrt(1 - cos*cos);
	hip:= d / cos;
	h:= sen * hip;
	writeln(h:0:3);
end.