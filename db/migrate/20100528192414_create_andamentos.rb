class CreateAndamentos < ActiveRecord::Migration
  def self.up
    create_table :andamentos do |t|
      t.string :nome_andamento
      t.timestamps
    end
  end

  def self.down
    drop_table :andamentos
  end
end
