class CreateCourseTeacherSchoolInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :course_teacher_school_infos do |t|
      t.references :course, null: false, foreign_key: true
      t.references :teacher_school_info, null: false, foreign_key: true
      t.integer :classroom_id

      t.timestamps
    end
  end
end
