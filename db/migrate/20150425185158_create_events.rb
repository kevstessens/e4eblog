class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :title
      t.string :main_image
      t.string :description
      t.string :address

      t.timestamps
    end
  end
end
