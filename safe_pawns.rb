def safe_pawns(pawns)
	@coordenadas = pawns.split(",")
	@rows_cols=[]
	@int_safe_pawns = 0

	if (@coordenadas.length<=8)
	puts "Numero de peones: #{@coordenadas.length}"
	
	@coordenadas.each_with_index{ |v,i|
		@rows_cols.push([@coordenadas[i][0].ord-64,@coordenadas[i][1].to_i])
	}

	@rows_cols.each_with_index{ |v,i|
		@pawn_izq=([@rows_cols[i][0].to_i-1, @rows_cols[i][1].to_i-1])
		@pawn_der=([@rows_cols[i][0].to_i+1, @rows_cols[i][1].to_i-1])

		if(@rows_cols.include?(@pawn_izq) || @rows_cols.include?(@pawn_der))
			@int_safe_pawns+=1
		end
	}
	puts @int_safe_pawns > 0 ? "Cantidad de peones seguros: #{@int_safe_pawns}" : "No hay peones seguros"
	else
		puts "Introduzca coordenadas validas. Nmro de peones max: 8"
	end
end
puts "Introduzca coordenadas:"
pawns = gets.to_s
safe_pawns(pawns)