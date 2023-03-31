class CreateClassrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :classrooms do |t|
      t.integer :classroom_type
      t.references :grade, null: false, foreign_key: true

      t.timestamps
    end
  end
end
