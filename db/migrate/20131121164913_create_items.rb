class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :weekday
      t.string :item_name
      t.string :item_picture
      t.string :item_category
      t.string :item_price
      t.string :item_description
    end
  end
end
