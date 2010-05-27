class CreateEstorias < ActiveRecord::Migration
  def self.up
    create_table :estorias do |t|
      t.string :titulo
      t.text :descricao
      t.datetime :data
      t.integer :categoria_id
      t.timestamps
    end
  end

  def self.down
    drop_table :estorias
  end
end
