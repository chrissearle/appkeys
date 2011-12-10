# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111210130825) do

  create_table "envkeys", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "host_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "envkeys", ["host_id"], :name => "index_envkeys_on_host_id"

  create_table "foreman_configs", :force => true do |t|
    t.string   "name"
    t.string   "value"
    t.integer  "host_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foreman_configs", ["host_id"], :name => "index_foreman_configs_on_host_id"

  create_table "hosts", :force => true do |t|
    t.string   "hostname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "hosts", ["hostname"], :name => "index_hosts_on_hostname", :unique => true

end
