class Estoria < ActiveRecord::Base
  belongs_to :categoria
  has_many :tarefas
  validates_presence_of :titulo
  validates_uniqueness_of :titulo
  
  def to_param
     require 'iconv'
     texto = Iconv.iconv("ASCII//IGNORE//TRANSLIT", "UTF-8", titulo).join.gsub(/[\s]+/i,'_').gsub(/[^a-z0-9\_]+/i, '').downcase
     "#{id}-#{texto}"
   end
  
end


