class CreateOrdersummaries < ActiveRecord::Migration
  def change
    create_table :ordersummaries do |t|
      t.date :order_date
      t.float :total_bill
      t.integer :student_id
      t.string :order_status
    end
  end
end
