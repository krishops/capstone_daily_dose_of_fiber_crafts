class UpdateUsersRavelriesTablename < ActiveRecord::Migration[5.2]
  def change
    rename_table :users_ravelries, :ravelry_users
  end
end
