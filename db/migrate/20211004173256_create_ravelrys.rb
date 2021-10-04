class CreateRavelrys < ActiveRecord::Migration[5.2]
  def change
    create_table :ravelrys do |t|
      t.string :pattern_name
      t.integer :ravelry_id
      t.string :web_link
      t.string :picture

      t.timestamps
    end
  end
end
