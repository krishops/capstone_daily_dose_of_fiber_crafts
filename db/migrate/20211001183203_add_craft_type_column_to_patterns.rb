class AddCraftTypeColumnToPatterns < ActiveRecord::Migration[5.2]
  def change
    add_column :patterns, :craft_type, :string
    add_column :patterns, :ravelry_id, :integer
  end
end
