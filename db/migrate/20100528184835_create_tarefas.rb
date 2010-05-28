class CreateTarefas < ActiveRecord::Migration
  def self.up
    create_table :tarefas do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :tarefas
  end
end
