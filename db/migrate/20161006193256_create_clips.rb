class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.integer :commander_id

      t.timestamps(null: false)
    end
  end
end
