program busquedaSecuencial;
const
	dimF = 10;
type
	vectorDesordenado = array [1..dimF] of integer;
	
procedure busquedaSecuencialVector(v:vectorDesordenado; n:integer);
	var
		i:integer;
		encontre:boolean;
	begin
		i:= 1;
		encontre:= false;
		while(i <= dimF) and not(encontre) do
			begin
				if(v[i] = n) then
					encontre := true
				else
					i+= 1;
			end;
		if(encontre) then
			writeln('El numero se encuentra en el vector.')
		else
			writeln('Cantidad de ejecuciones: ', i - 1);
	end;
	
procedure cargarVector(var v:vectorDesordenado); //el vector esta ordenado, supongamos que no
	var
		i:integer;
	begin
		for i:= 1 to dimF do
			v[i]:= i * 7;
	end;

var //programa principal
	v:vectorDesordenado;
	n:integer;
begin
	cargarVector(v);
	write('Ingresa un numero para buscar: ');
	readln(n);
	busquedaSecuencialVector(v,n);
end.
