class RemoveCraftTypeColumnFromRavelryDatabases < ActiveRecord::Migration[5.2]
  def change
    remove_column :ravelry_databases, :craft_type
  end
end
