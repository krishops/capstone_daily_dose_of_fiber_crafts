class CreateUsersRavelries < ActiveRecord::Migration[5.2]
  def change
    create_table :users_ravelries do |t|
      t.belongs_to :user, index: true
      t.belongs_to :ravelry, index: true
    end
  end
end
