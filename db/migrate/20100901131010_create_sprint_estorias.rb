class CreateSprintEstorias < ActiveRecord::Migration
  def self.up
    create_table :sprint_estorias do |t|
      t.integer :sprint_id
      t.integer :estoria_id
      t.integer :prioridade

      t.timestamps
    end
  end

  def self.down
    drop_table :sprint_estorias
  end
end
