class RemoveUpdatedFromPatterns < ActiveRecord::Migration[5.2]
  def change
    remove_column :patterns, :updated_at
  end
end
