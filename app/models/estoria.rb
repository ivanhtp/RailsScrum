class Estoria < ActiveRecord::Base
  belongs_to:categoria
  has_many :tarefas
  has_many :sprint_estorias
  has_many :sprint, :through => :sprint_estorias
  validates_presence_of :titulo
  validates_uniqueness_of :titulo
 
 attr_accessor :sprint_ids
 after_save :update_sprints
 
 #chamada after_save para manipular sprint_ids
 def update_sprints
  unless sprint_ids.nil?
    self.sprint_estorias.each do |m|
      m.destroy unless sprint_ids.include?(m.sprint_id.to_s)
      sprint_ids.delete(m.sprint_id.to_s)
    end
    sprint_ids.each do |g|
      self.sprint_estorias.create(:sprint_id =>g) unless g.blank?
    end
    reload
    self.sprint_ids = nil
  end
end

  
end


