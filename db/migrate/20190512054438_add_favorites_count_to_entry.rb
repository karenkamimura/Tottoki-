class AddFavoritesCountToEntry < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :favorites_count, :integer
  end
end
