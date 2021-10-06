class DropTablesPatternRavelryUser < ActiveRecord::Migration[5.2]
  def change
    drop_table :ravelry_users
    drop_table :patterns
  end
end
