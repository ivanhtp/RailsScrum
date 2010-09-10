class Sprint < ActiveRecord::Base
  has_many :sprint_diarios	
  has_many :estorias, :through => :sprint_estorias
  validates_presence_of :dtinicio
  validates_presence_of :dtfim  

end
