class Estoria < ActiveRecord::Base
  belongs_to:categoria
  has_many :tarefas
  has_many :sprint, :through => :sprint_estorias
  validates_presence_of :titulo
  validates_uniqueness_of :titulo
 

  
end


