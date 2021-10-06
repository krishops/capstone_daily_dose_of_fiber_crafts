class RemoveTimestampsFromPatterns < ActiveRecord::Migration[5.2]
  def change
    remove_column :patterns, :created_at, :updated_at
  end
end
