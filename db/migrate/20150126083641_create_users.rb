class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name,             null: false, default: ""
      t.string :salt,             null: false, default: ""
      t.string :hashed_password,  null: false, default: ""
      t.string :email,            null: false, default: ""
      t.string :mobile_phon,      limit: 32
      t.boolean :is_admin,        null: false, default: 0

      t.timestamps null: false
    end
  end
end
