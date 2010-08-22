class RemoveUserFromTarefa < ActiveRecord::Migration
  def self.up
  	remove_column :tarefas, :login_user_resp
  	remove_column :tarefas, :nome_user_resp
  end
  
  def self.down
  	add_column  :login_user_resp, :limit => 40     
  	add_column	:nome_user_resp, :limit => 100, :default => '', :null => true
  end
end
