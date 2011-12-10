class CreateEnvkeys < ActiveRecord::Migration
  def change
    create_table :envkeys do |t|
      t.string :name
      t.string :value
      t.integer :host_id

      t.timestamps
    end
    
    add_index :envkeys, :host_id, :unique => false
  end
end
