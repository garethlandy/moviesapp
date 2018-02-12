class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.date :dob
      t.string :gender
      t.boolean :regular
      t.string :photo
      t.string :password_digest

      t.timestamps
    end
  end
end
