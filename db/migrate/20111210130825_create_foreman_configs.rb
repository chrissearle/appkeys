class CreateForemanConfigs < ActiveRecord::Migration
  def change
    create_table :foreman_configs do |t|
      t.string :name
      t.string :value
      t.integer :host_id

      t.timestamps
    end

    add_index :foreman_configs, :host_id, :unique => false
  end
end
