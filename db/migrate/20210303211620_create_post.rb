class CreatePost < ActiveRecord::Migration[6.1]
  def change
    create_table :post do |t|
      t.string :title
      t.text :body
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
