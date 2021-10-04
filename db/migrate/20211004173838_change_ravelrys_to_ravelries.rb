class ChangeRavelrysToRavelries < ActiveRecord::Migration[5.2]
  def change
    rename_table :ravelrys, :ravelries
  end
end
