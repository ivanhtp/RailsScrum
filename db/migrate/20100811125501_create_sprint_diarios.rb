class CreateSprintDiarios < ActiveRecord::Migration
  def self.up
    create_table :sprint_diarios do |t|
      t.integer :sprint_id
      t.date :dia
      t.integer :tarefa_id
      t.integer :tarefa_pontos

      t.timestamps
    end
  end

  def self.down
    drop_table :sprint_diarios
  end
end
