class AddFavoritesCountToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :favorites_count, :integer
  end
end
