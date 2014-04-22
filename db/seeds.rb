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


ext_img1 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp1.jpg'))
ext_img2 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp2.jpg'))
ext_img3 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp3.jpg'))
ext_img4 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp4.jpg'))
ext_img5 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp5.jpg'))
ext_img6 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp6.jpg'))

imgArr = [img1, img3, img4, img5, img6, img7, img9, img10, img11, img12]

ext_imgArr = [ext_img1, ext_img2, ext_img3, ext_img4, ext_img5, ext_img6]

# Create a test user
test_user_1 = User.create(:name => 'user 1', :email => 'test@test.com', :password => 'qwerasdf', :avatar => img1)
test_user_2 = User.create(:name => 'user 2', :email => 'test2@test.com', :password => 'qwerasdf', :avatar => img3)

Idea.create(:blurb => "Import a video, and see how the camera moved as the shot filmed, using a virtual person holding a camera.", :photo => File.open(File.join(Rails.root, 'app', 'assets', 'images', 'photography.jpg')), :problem => "We are currently unable to learn filming techniques without in-person training.  My TechCrunch colleague Natasha Lomas recently argued – quite convincingly – that startups should stop trying to make proximity-based social networking “happen” — that most attempts had failed, and even ongoing ventures like Foursquare have had to tone down the idea. And yet these apps still keep appearing. And who can blame them — we might as well do something social with that GPS chip.", :solution => "The app lets you tap the image of a friend to take a picture – in itself an innovative new kind of UI. But hold their picture down, and you record a short video of a few seconds. Using the front-facing camera you can send a selfie or, as is often the case, a short video message to your friend. Click on the bottom half of the camera field and you can type in a short message.")
Idea.create(:blurb => "GPS with routes that maximize MPG", :photo => File.open(File.join(Rails.root, 'app', 'assets', 'images', 'audi.jpg')))
Idea.create(:blurb => "A Browser Extension That Lets You Choose What You Censor")
Idea.create(:blurb => "Fundraising website that lets common people tell politicians if you vote for X we will donate $ to whoever runs against you")
Idea.create(:blurb => "Jukebox app for bars", :photo => File.open(File.join(Rails.root, 'app', 'assets', 'images', 'jukebox.jpg')))
Idea.create(:blurb => "A resume that illustrates your present ability rather than your employment history")
Idea.create(:blurb => "A microwave with a built-in whisk/stirrer so you don't have to remove your food every two minutes and stir it")
Idea.create(:blurb => "Wind turbines along highways and interstates", :photo => File.open(File.join(Rails.root, 'app', 'assets', 'images', 'turbine.jpg')))
Idea.create(:blurb => "A website that tells you if you will need the assigned textbook for that class/professor")
Idea.create(:blurb => "Website where you type in a word in your language, and see if it could be construed as offensive in any other language")
Idea.create(:blurb => "Mechanics that take pictures of their progress while working on your car", :photo => File.open(File.join(Rails.root, 'app', 'assets', 'images', 'mechanic.jpg')))

99.times do |i|
	puts (i+1)
	if (i+1) % 3 == 0
		new_idea = Idea.create(:blurb => BetterLorem.c(100, true, true), :photo => imgArr.sample,
			            :problem => BetterLorem.c(300, true, true), :solution => BetterLorem.c(400, true, true), :user => test_user_1)
        new_idea.contributors.create(user: test_user_2, idea: new_idea)
	else
		new_idea = Idea.create(:blurb => BetterLorem.c(100, true, true), :problem => BetterLorem.c(300, true, true), :solution => BetterLorem.c(400, true, true), :user => test_user_1)
        new_idea.contributors.create(user: test_user_2, idea: new_idea)
	end
end
