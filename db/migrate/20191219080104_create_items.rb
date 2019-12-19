class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :product_id
      t.string :size
      t.decimal :cost
      t.timestamps
    end
  end
end
