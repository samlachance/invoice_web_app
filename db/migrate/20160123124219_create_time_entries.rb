class CreateTimeEntries < ActiveRecord::Migration
  def change
    create_table :time_entries do |t|
      t.text :description
      t.float :time, :rate
      t.timestamps null: false
    end
  end
end
