class CreateSprints < ActiveRecord::Migration
  def self.up
    create_table :sprints do |t|
      t.date :dtinicio
      t.date :dtfim
      t.decimal :pontos
      t.text :objetivo
      t.text :ret_bom
      t.text :ret_ruim

      t.timestamps
    end
  end

  def self.down
    drop_table :sprints
  end
end
