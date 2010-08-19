class Estoria < ActiveRecord::Base
  belongs_to:categoria
  has_many :tarefas
  validates_presence_of :titulo
  validates_uniqueness_of :titulo
  
end


