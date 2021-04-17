class CreateMikomis < ActiveRecord::Migration[6.1]
  def change
    create_table :mikomis do |t|
      t.integer :user_id
      t.integer :kansan
      t.string :shohin
      t.date :constract_date
      t.string :user_name
      t.string :result

      t.timestamps
    end
  end
end
