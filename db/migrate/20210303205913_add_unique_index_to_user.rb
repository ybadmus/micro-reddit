class AddUniqueIndexToUser < ActiveRecord::Migration[6.1]
  def change
    add_index :user, :username, unique: true, name: 'uk_username'
  end
end
