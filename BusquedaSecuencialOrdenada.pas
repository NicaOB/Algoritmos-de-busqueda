program BusquedaSecuencialOrdenada;
const
	dimF = 10;
type
	vectorOrdenado = array [1.. dimF] of integer;

procedure cargarVector(var v:vectorOrdenado);
	var
		i:integer;
	begin
		for i:= 1 to dimF do
			v[i]:= i * 7;
	end;
	
procedure busquedaSecuencialVector(v:vectorOrdenado; n:integer);
	var
		i:integer;
		encontre:boolean;
	begin
		i:= 1;
		encontre:= false;
		while ((i <= dimF) and not(encontre)) and (v[i] < n) do //aca yace la diferencia entre secuencial, y secuencial ordenado.
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

var //programa principal
	v:vectorOrdenado;
	n:integer;
begin
	cargarVector(v);
	write('Ingresa un numero para buscar: ');
	readln(n);
	busquedaSecuencialVector(v,n);
end.

	
