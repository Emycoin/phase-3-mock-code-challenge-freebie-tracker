class Createfreebies < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :company_id
      t.integer :dev_id
      t.integer :value
    end
  end
end
