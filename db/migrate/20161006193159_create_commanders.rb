class CreateCommanders < ActiveRecord::Migration
  def change
    create_table :commanders do |t|
      t.string  :name
      t.string  :email
      t.string  :pw_hash

      t.timestamps(null: false)
    end
  end
end
