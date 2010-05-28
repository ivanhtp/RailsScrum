class AddDescricaoToTarefa < ActiveRecord::Migration
  def self.up
    add_column :tarefas, :descricao, :text
  end

  def self.down
    remove_column :tarefas, :descricao
  end
end
