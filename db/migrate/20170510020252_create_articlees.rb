class CreateArticlees < ActiveRecord::Migration[5.1]
  def change
    create_table :articlees do |t|
      t.string :titile
      t.text :post
      t.integer :user_id

      t.timestamps
    end
  end
end
