program busquedaDicotomica;
const
	dimF = 100;
type
	vectorOrdenado = array [1.. dimF] of integer;

procedure cargarVector(var v:vectorOrdenado);
	var
		i:integer;
	begin
		for i:= 1 to dimF do
			v[i]:= i * 7;
	end;
	
procedure busquedaDicotomicaVector(v:vectorOrdenado; n:integer);
	var
		ini,mitad,fin, cant:integer;
		encontre:boolean;
	begin
		cant:= 0;
		encontre:= false;
		ini:= 1;
		fin:= dimF;
		while (ini <= fin) and not (encontre) do
			begin
				mitad:= (ini + fin) div 2;
				cant+=1;
				if(v[mitad] > n)then
					fin:= mitad - 1
				else if(v[mitad] < n) then
					ini:= mitad + 1
				else
					encontre:= true;
			end;
		if(encontre)then
			writeln('Valor encontrado.')
		else
			writeln('Cantidad de pasos: ', cant);
	end;

var //programa principal
	v:vectorOrdenado;
	n:integer;
begin
	cargarVector(v);
	write('Ingresa un numero para buscar: ');
	readln(n);
	busquedaDicotomicaVector(v,n);
end.
