require 'fileutils'
desc "criando banco"
task :migrations do
  sh('rails db:environment:set RAILS_ENV=development')
  project_path = Rails.root.to_s
  sh('rails db:create')
  sh('rails db:drop')
  sh('rails db:create')
  FileUtils.cp("#{project_path}/app/models/student.rb", "#{project_path}/app/models/backup") if File.exist?("#{project_path}/app/models/student.rb")
  FileUtils.cp("#{project_path}/app/models/school.rb", "#{project_path}/app/models/backup") if File.exist?("#{project_path}/app/models/school.rb")
  FileUtils.cp("#{project_path}/app/models/locality.rb", "#{project_path}/app/models/backup") if File.exist?("#{project_path}/app/models/locality.rb")
  FileUtils.cp("#{project_path}/app/models/modality.rb", "#{project_path}/app/models/backup") if File.exist?("#{project_path}/app/models/modality.rb")
  FileUtils.cp("#{project_path}/app/models/teacher.rb", "#{project_path}/app/models/backup") if File.exist?("#{project_path}/app/models/teacher.rb")
  FileUtils.cp("#{project_path}/app/models/course.rb", "#{project_path}/app/models/backup") if File.exist?("#{project_path}/app/models/course.rb")
  FileUtils.cp("#{project_path}/app/models/teacher_school_info.rb", "#{project_path}/app/models/backup") if File.exist?("#{project_path}/app/models/teacher_school_info.rb")
  FileUtils.cp("#{project_path}/app/models/course_teacher_school_info.rb", "#{project_path}/app/models/backup") if File.exist?("#{project_path}/app/models/course_teacher_school_info.rb")
  
  sh('rails d scaffold student')
  sh('rails d scaffold school')
  sh('rails d scaffold locality')
  sh('rails d scaffold modality')
  sh('rails d scaffold teacher')
  sh('rails d scaffold course')
  sh('rails d scaffold teacher_school_info')
  sh('rails d scaffold course_teacher_school_info')
  
  sh('rails g scaffold student name:string birth:date')
  sh('rails g scaffold locality name:string')
  sh('rails g scaffold modality name:string')
  sh('rails g scaffold school name:string address:string locality:references modality:references')
  sh('rails g scaffold teacher name:string mail:string phone:string')
  sh('rails g scaffold course name:string')
  sh('rails g scaffold teacher_school_info school:references teacher:references')
  sh('rails g scaffold course_teacher_school_info course:references teacher_school_info:references')

  FileUtils.cp("#{project_path}/app/models/backup/student.rb","#{project_path}/app/models") if File.exist?("#{project_path}/app/models/backup/student.rb")
  FileUtils.cp("#{project_path}/app/models/backup/school.rb", "#{project_path}/app/models") if File.exist?("#{project_path}/app/models/backup/school.rb")
  FileUtils.cp("#{project_path}/app/models/backup/locality.rb", "#{project_path}/app/models") if File.exist?("#{project_path}/app/models/backup/locality.rb")
  FileUtils.cp("#{project_path}/app/models/backup/modality.rb", "#{project_path}/app/models") if File.exist?("#{project_path}/app/models/backup/modality.rb")
  FileUtils.cp("#{project_path}/app/models/backup/teacher.rb", "#{project_path}/app/models") if File.exist?("#{project_path}/app/models/backup/teacher.rb")
  FileUtils.cp("#{project_path}/app/models/backup/course.rb", "#{project_path}/app/models") if File.exist?("#{project_path}/app/models/backup/course.rb") 
  FileUtils.cp("#{project_path}/app/models/backup/teacher_school_info.rb", "#{project_path}/app/models") if File.exist?("#{project_path}/app/models/backup/teacher_school_info.rb")
  FileUtils.cp("#{project_path}/app/models/backup/course_teacher_school_info.rb", "#{project_path}/app/models") if File.exist?("#{project_path}/app/models/backup/course_teacher_school_info.rb")
  
  FileUtils.rm Dir.glob("#{project_path}/app/models/backup/*")
  sh('rails db:migrate')
  sh('rails db:seed')
end
