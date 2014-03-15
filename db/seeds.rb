# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#puts 'ROLES'
#YAML.load(ENV['ROLES']).each do |role|
#  puts 'bla'
#  Role.find_or_create_by_name(role)
#  puts 'role: ' << role
#end
#puts 'DEFAULT USERS'
#user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
#puts 'user: ' << user.name
#user.add_role :admin

I18n.enforce_available_locales = false

# Create a test user
User.create(:name => 'user 1', :email => 'test@test.com', :password => 'testtest')
Idea.create(:description => 'idea 1')
Idea.create(:description => 'idea 2')
Idea.create(:description => 'idea 3')
Idea.create(:description => 'idea 4')
Idea.create(:description => 'idea 5')
Idea.create(:description => 'idea 6')
Idea.create(:description => 'idea 7')
Idea.create(:description => 'idea 8')
Idea.create(:description => 'idea 9')

