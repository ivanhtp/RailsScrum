class AddSprintIdToEstorias < ActiveRecord::Migration
  def self.up
    add_column :estorias, :sprint_id, :integer
  end

  def self.down
    remove_column :estorias, :sprint_id
  end
end
