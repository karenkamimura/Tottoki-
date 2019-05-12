class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :entry, foreign_key: true
      t.integer :favorites_count

      t.timestamps
    end
  end
end
