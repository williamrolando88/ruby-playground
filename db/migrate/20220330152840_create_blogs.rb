class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :user
      t.text :post

      t.timestamps
    end
  end
end
