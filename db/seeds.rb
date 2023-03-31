require 'faker'
require 'digest/md5'

Faker::Config.locale = 'pt'

Student.destroy_all
CourseTeacherSchoolInfo.destroy_all
Course.destroy_all
TeacherSchoolInfo.destroy_all
Teacher.destroy_all
School.destroy_all
Grade.destroy_all
Locality.destroy_all

# 10.times do |n|
#     Grade.create(name:Faker::Color.color_name)
# end
20.times do |n|
    Locality.create(name:Faker::Address.city)
end
50.times do |n|
    School.create(name:Faker::Educator.university,
                  address:Faker::Address.street_address,
                  locality_id:rand(Locality.first.id..Locality.last.id))
end
2000.times do |n|
    Student.create(name:Faker::Name.name_with_middle,
                    birth:Faker::Date.birthday(min_age: 6, max_age: 65))
end

15.times do |n|
    Teacher.create(name:Faker::Name.name_with_middle,mail:Faker::Internet.email,phone:Faker::PhoneNumber.cell_phone)
end

15.times do |n|
    TeacherSchoolInfo.create(school_id:rand(School.first.id..School.last.id),teacher_id:Teacher.first.id..Teacher.last.id)
end

10.times do |n|
    Course.create(name:Faker::Educator.unique.subject)
end