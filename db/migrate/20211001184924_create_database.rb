class CreateDatabase < ActiveRecord::Migration[5.2]
  def change
    create_table :ravelry_databases do |t|
      t.string :pattern_name
      t.integer :ravelry_id
      t.string :craft_type
      t.string :web_link
      t.string :picture

      t.timestamps
    end
  end
end
