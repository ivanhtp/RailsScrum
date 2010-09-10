module EstoriasHelper
	
	#RETORNA TODAS AS TAREFAS DAQUELA ESTÓRIA
	def qtd_tarefas_total(args)
	   args[:estoria_id]  ||= 0
	   @tarefas_total = Tarefa.count(:conditions => "estoria_id = #{args[:estoria_id]}")
	   return @tarefas_total
	end	
	
	#RETORNA QUANTIDADE DE TAREFAS CONCLUIDAS
	def qtd_tarefas_concluidas(args)
		args[:estoria_id]  ||= 0
		@tarefas_concluidas = Tarefa.count(:conditions => "estoria_id = #{args[:estoria_id]} AND andamento_id = '4'")
		return @tarefas_concluidas
	end
	
	#RETORNA PERCENTAGENS DE ITENS CONCLUIDOS
	def percentagem_tarefas_concluidas(args)
		args[:estoria_id]  ||= 0
		args[:tipo]  ||= 0         #tipo 1 - percentagem normal
		                          #tipo 2 - em pixel para criar gráfico
                                                
    	if args[:tipo] == 1 
    		if (qtd_tarefas_total :estoria_id => args[:estoria_id] ) == 0
    			return 0
    		else									  
	   			@percent_tarefas_concluidas =  ((qtd_tarefas_concluidas :estoria_id => args[:estoria_id] ) * 100) / (qtd_tarefas_total :estoria_id => args[:estoria_id] )   
	   			return @percent_tarefas_concluidas
   			end
   		else
   			if (qtd_tarefas_total :estoria_id => args[:estoria_id] ) == 0
    			return 120
    		else	
   	   			@percent_tarefas_concluidas =  ((qtd_tarefas_concluidas :estoria_id => args[:estoria_id] ) * 120) / (qtd_tarefas_total :estoria_id => args[:estoria_id] )   #120 pois o gráfico tem 120 pixels
	   			return (119 - @percent_tarefas_concluidas)
	   		end	
	    end
   end

end
