class AddClientAndDeveloperIdToTimeEntry < ActiveRecord::Migration
  def change
    add_column :time_entries, :developer_id, :integer
    add_column :time_entries, :client_id, :integer
  end
end
