class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title,null: false
      t.text :content ,null: false
      t.integer :lesson_id
      t.integer :input_user_id
      t.integer :output_user_id
      t.integer :next_input_user_id
      t.integer :next_output_user_id
      t.integer :input_or_output
      t.integer :start_input_or_output
      t.string :first_update_date
      t.timestamps
    end
  end
end
