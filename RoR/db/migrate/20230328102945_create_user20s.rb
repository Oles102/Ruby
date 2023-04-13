class CreateUser20s < ActiveRecord::Migration[7.0]
  def change
    create_table :user20s do |t|
      t.string   :email
      t.string   :password
      t.string   :last_name
      t.string   :first_name
      t.boolean  :confirmed

      t.timestamps
    end
  end
end
