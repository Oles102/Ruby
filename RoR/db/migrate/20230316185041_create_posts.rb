class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :message
      t.string :title
      t.bigint :book_id
      t.bigint :user_id
      t.index %i[book_id user_id], unique: true

      t.timestamps
    end
  end
end
