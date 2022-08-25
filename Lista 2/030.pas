 program e030;
 var a, b: longint;
 
 begin
	read(a, b);
	case a of
		1001: writeln((5.32 * b):0:2);
		1324: writeln((6.45 * b):0:2);
		6548: writeln((2.37 * b):0:2);
		987: writeln((5.32 * b):0:2);
		7623: writeln((6.45 * b):0:2);
	else
		writeln('ERRO');
	end;
end.