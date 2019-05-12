class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.integer :blog_id
      t.string :title
      t.text :url
      t.string :author
      t.datetime :published
      t.text :content

      t.timestamps
    end
  end
end
