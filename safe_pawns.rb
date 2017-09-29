def safe_pawns(pawns)
	@coordenadas = pawns.split(",")
	@rows_cols=[]
	@int_safe_pawns = 0

	#Convertir columnas a valor numerico
	@coordenadas.each_with_index{ |v,i|
		@rows_cols.push([@coordenadas[i][0].ord-64,@coordenadas[i][1]])
	}

	@rows_cols.each_with_index{ |v,i|
		puts "indice #{i}"
		puts "valor rows_cols"
		puts @rows_cols
		puts"valor izq"
		puts @pawn_izq =([@rows_cols[i][0].to_i-1, @rows_cols[i][1].to_i-1])
		puts "valor der"
		puts @pawn_der =([@rows_cols[i][0].to_i+1, @rows_cols[i][1].to_i-1])
	}
	puts @int_safe_pawns > 0 ? "Cantidad de peones seguros: #{@int_safe_pawns}" : "No hay peones seguros"
end
puts "Introduzca coordenadas:"
pawns = gets.to_s
safe_pawns(pawns)