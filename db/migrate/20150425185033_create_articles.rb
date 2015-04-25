class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :subtitle
      t.string :main_image
      t.datetime :date
      t.integer :category_id
      t.text :body
      t.integer :author_id

      t.timestamps
    end
  end
end
