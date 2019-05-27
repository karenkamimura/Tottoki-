class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs, :options => 'ENGINE=InnoDB ROW_FORMAT=DYNAMIC' do |t|
      t.integer :user_id
      t.integer :favorite_count
      t.integer :impression_count
      t.string :title
      t.string :name
      t.text :url
      t.text :description
      t.datetime :published

      t.timestamps
    end
  end
end
