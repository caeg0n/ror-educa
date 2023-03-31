class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.date :birth
      t.string :inep
      t.integer :transportation
      t.integer :status
      t.integer :classroom_id

      t.timestamps
    end
  end
end
