def safe_pawns(pawns)
	@coordenadas = pawns.split(",")
	@rows_cols=[]
	#@pawn_izq=[]
	#@pawn_der=[]
	#@safe_pawns =[]
	@int_safe_pawns = 0
	if (@coordenadas.length<=8)
		puts "#{@coordenadas.first}"
	puts "Numero de peones #{@coordenadas.length}"
	#Convertir columnas a valor numerico
	@coordenadas.each_with_index{ |v,i|
		@rows_cols.push([@coordenadas[i][0].ord-64,@coordenadas[i][1].to_i])
	}
	puts "coordenadas: #{@rows_cols}"
	@rows_cols.each_with_index{ |v,i|
		puts "indice #{i} - #{@rows_cols[i]}"
		@pawn_izq=([@rows_cols[i][0].to_i-1, @rows_cols[i][1].to_i-1])
		puts"valor izq - #{@pawn_izq}"
		@pawn_der=([@rows_cols[i][0].to_i+1, @rows_cols[i][1].to_i-1])
		puts "valor der - #{@pawn_der}" 
		if(@rows_cols.include?(@pawn_izq) || @rows_cols.include?(@pawn_der))
			puts"el valor izquierdo o derecho estan en el arreglo"
			@int_safe_pawns+=1
		else
			puts "no existe"
		end
		puts="======"	
	}
	puts @int_safe_pawns > 0 ? "Cantidad de peones seguros: #{@int_safe_pawns}" : "No hay peones seguros"
	else
		puts "Introduzca coordenadas validas. Nmro de peones max: 8"
	end
end
puts "Introduzca coordenadas:"
pawns = gets.to_s
safe_pawns(pawns)