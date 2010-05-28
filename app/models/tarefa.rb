class Tarefa < ActiveRecord::Base
  belongs_to :estorias
  belongs_to :andamentos
end
