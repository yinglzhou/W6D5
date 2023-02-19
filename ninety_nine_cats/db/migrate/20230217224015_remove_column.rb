class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :cats, "#<ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition"
  end
end
