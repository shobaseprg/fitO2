class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :sub_number,null: false
      t.integer :base_or_development,null: false
      t.integer :lesson_no,null: false
      t.string :title,null: false
      t.integer :active
      t.timestamps
    end
  end
end
