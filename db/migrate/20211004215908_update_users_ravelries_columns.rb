class UpdateUsersRavelriesColumns < ActiveRecord::Migration[5.2]
  def change
    drop_table :users_ravelries
  end
end
