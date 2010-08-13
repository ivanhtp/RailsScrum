class SprintDiario < ActiveRecord::Base
  belongs_to :tarefa
  belongs_to :sprint
  
end
