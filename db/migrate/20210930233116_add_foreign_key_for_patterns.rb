class AddForeignKeyForPatterns < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :patterns, :users
  end
end
