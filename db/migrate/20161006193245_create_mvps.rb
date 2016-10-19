class CreateMvps < ActiveRecord::Migration
  def change
    create_table :mvps do |t|
      t.string  :title
      t.string  :first_name
      t.string  :nick_name
      t.string  :last_name
      t.string  :kills
      t.integer :commander_id
      t.timestamps(null: false)
    end
  end
end
