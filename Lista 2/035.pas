program e035;
var a: real;
 
begin
	read(a);
	if (a < 540) then writeln('NAO')
	else if (a <= 1424) then writeln('1 ', (a * 0):0:2)
	else if (a > 1424) and (a <= 2150) then writeln('2 ', (a * 0.075):0:2)
	else if (a > 2150) and (a <= 2866) then writeln('3 ', (a * 0.15):0:2)
	else if (a > 2866) and (a <= 3582) then writeln('4 ', (a * 0.225):0:2)
	else if (a > 3582) then writeln('5 ', (a * 0.275):0:2);
end.