class AddSprintToTarefas < ActiveRecord::Migration
  def self.up
    add_column :tarefas, :sprint_id, :integer
  end

  def self.down
    remove_column :tarefas, :sprint_id
  end
end
