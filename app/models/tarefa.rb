class Tarefa < ActiveRecord::Base
  belongs_to :estorias
  belongs_to :andamentos
  #validates_length_of :pontos, :maximum=>3
end
