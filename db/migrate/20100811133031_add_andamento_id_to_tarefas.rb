class AddAndamentoIdToTarefas < ActiveRecord::Migration
  def self.up
    add_column :tarefas, :andamento_id, :integer
  end

  def self.down
    remove_column :tarefas, :andamento_id
  end
end
