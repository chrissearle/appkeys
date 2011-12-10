class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :hostname

      t.timestamps
    end
    
    add_index :hosts, :hostname, :unique => true
  end
end
