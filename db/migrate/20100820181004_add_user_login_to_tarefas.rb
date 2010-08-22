class AddUserLoginToTarefas < ActiveRecord::Migration
  def self.up
    add_column :tarefas, :user_login, :string
  end

  def self.down
    remove_column :tarefas, :user_login
  end
end
