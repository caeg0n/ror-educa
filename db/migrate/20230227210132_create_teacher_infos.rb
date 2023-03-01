class CreateTeacherInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_infos do |t|
      t.string :name
      t.string :mail
      t.string :phone

      t.timestamps
    end
  end
end
