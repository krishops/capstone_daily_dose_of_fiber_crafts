class CreatePatterns < ActiveRecord::Migration[5.2]
  def change
    create_table :patterns do |t|
      t.references :user, index: true, foreign_key: true
      t.references :ravelry, index: true, foreign_key: true

      t.timestamps null:false
    end
  end
end
