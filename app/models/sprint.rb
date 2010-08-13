class Sprint < ActiveRecord::Base
  has_many :sprint_diarios	
  validates_presence_of :dtinicio
  validates_presence_of :dtfim  

end
