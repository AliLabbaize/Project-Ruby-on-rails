class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
        t.string :user_name
        t.string :mail
        t.string :mdp
        t.boolean :confirmed, default: false
        t.string :confirmation_token
        t.string :password_digest
        t.string :firstname
        t.string :last_name
        t.boolean :avatar, defalut: false
        t.string :level_english
        t.integer :score_sy
      t.timestamps
    end
  end
end
