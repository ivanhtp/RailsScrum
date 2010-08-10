class AddDescricaoToTarefa < ActiveRecord::Migration
  def self.up
    add_column :tarefas, :text
  end

  def self.down
    remove_column :tarefas
  end
end
