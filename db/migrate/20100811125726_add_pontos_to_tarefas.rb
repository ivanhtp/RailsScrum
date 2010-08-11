class AddPontosToTarefas < ActiveRecord::Migration
  def self.up
    add_column :tarefas, :pontos, :integer
  end

  def self.down
    remove_column :tarefas, :pontos
  end
end
