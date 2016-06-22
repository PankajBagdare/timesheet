class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :type
      t.string :user_name
      t.string :email
      t.string :password
      t.string :company
      t.timestamps null: false
    end
  end
end
