class CreateTarefas < ActiveRecord::Migration
  def self.up
    create_table :tarefas do |t|
      t.string :titulo
      t.text :descricao
      t.datetime :data
      t.string  :login_user_resp, :limit => 40      
      t.string  :nome_user_resp, :limit => 100, :default => '', :null => true
      t.status  :andamento_id
      t.integer :estoria_id
      t.timestamps
    end
  end

  def self.down
    drop_table :tarefas
  end
end
