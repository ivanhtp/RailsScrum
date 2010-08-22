# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100820181004) do

  create_table "andamentos", :force => true do |t|
    t.string   "nome_andamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorias", :force => true do |t|
    t.string   "nome_categoria"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "estorias", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.datetime "data"
    t.integer  "categoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sprint_id"
  end

  add_index "estorias", ["categoria_id"], :name => "categoria_id"

  create_table "sprint_diarios", :force => true do |t|
    t.integer  "sprint_id"
    t.date     "dia"
    t.integer  "tarefa_id"
    t.integer  "tarefa_pontos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sprints", :force => true do |t|
    t.date     "dtinicio"
    t.date     "dtfim"
    t.integer  "pontos",     :limit => 10, :precision => 10, :scale => 0
    t.text     "objetivo"
    t.text     "ret_bom"
    t.text     "ret_ruim"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tarefas", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.datetime "data"
    t.integer  "estoria_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pontos"
    t.integer  "andamento_id"
    t.integer  "sprint_id"
    t.string   "user_login"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
