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

# load images
img1 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'img1.jpg'))
img3 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'img3.jpg'))
img4 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'img4.jpg'))
img5 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'img5.jpg'))
img6 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'img6.jpg'))
img7 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'img7.jpg'))
img9 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'img9.jpg'))
img10 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'img10.jpg'))
img11 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'img11.jpg'))
img12 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'img12.jpg'))

imgArr = [img1, img3, img4, img5, img6, img7, img9, img10, img11, img12]

50.times do |i|
	puts (i+1)
	if (i+1) % 3 == 0
		Idea.create(:blurb => BetterLorem.c(100, true, true), :photo => imgArr.sample)
	else
		Idea.create(:blurb => BetterLorem.c(100, true, true))
	end
end
