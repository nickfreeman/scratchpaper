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
imgNick = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'nick.jpg'))
imgAsaf = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'asaf.jpg'))
imgJames = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'james.jpg'))

ext_img1 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp1.jpg'))
ext_img2 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp2.jpg'))
ext_img3 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp3.jpg'))
ext_img4 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp4.jpg'))
ext_img5 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp5.jpg'))
ext_img6 = File.open(File.join(Rails.root, 'app', 'assets', 'images', 'tmp6.jpg'))

imgArr = [img1, img3, img4, img5, img6, img7, img9, img10, img11, img12]

ext_imgArr = [ext_img1, ext_img2, ext_img3, ext_img4, ext_img5, ext_img6]

nick_user = User.create(:name => 'Nick', :email => 'nick@nick.com', :password => 'qwerasdf', :avatar => imgNick)
asaf_user = User.create(:name => 'Asaf', :email => 'asaf@asaf.com', :password => 'qwerasdf', :avatar => imgAsaf)
james_user = User.create(:name => 'James', :email => 'james@james.com', :password => 'qwerasdf', :avatar => imgJames)

99.times do |i|
	puts (i+1)
	if (i+1) % 3 == 0
	    #new_idea = Idea.create(:blurb => BetterLorem.c(100, true, true), :problem => BetterLorem.c(300, true, true), :solution => BetterLorem.c(400, true, true), :user => james_user, :photo => imgArr.sample)
	    new_idea = Idea.create!(:blurb => BetterLorem.c(100, true, true), :problem => BetterLorem.c(300, true, true), :solution => BetterLorem.c(400, true, true), :user => james_user, :photo => imgArr.sample)
        #new_idea.contributors.create(user: nick_user, idea: new_idea)
	else
	    new_idea = Idea.create(:blurb => BetterLorem.c(100, true, true), :problem => BetterLorem.c(300, true, true), :solution => BetterLorem.c(400, true, true), :user => nick_user)
        new_idea.contributors.create(user: asaf_user, idea: new_idea)
	end
end

Idea.create(:blurb => "Import a video, and see how the camera moved as the shot filmed, using a virtual person holding a camera.", :photo => File.open(File.join(Rails.root, 'app', 'assets', 'images', 'photography.jpg')), :problem => "We are currently unable to learn filming techniques without in-person training.  Many of my friend spend hundreds of dollars on lessons in cinamatogrphy, learning the best angles for the shots that we want to include in our films. Watching videos definitely helps to learn cinematography, but seeing what is done behind the camera for every shot would be very useful.", :solution => "I imagine a solution where a device can be added to a camera during a shot, and the motion is detected to recoginze the speed and direction of the camera's motion, as well as the ways it is tilted and turned. If this motion can then be translated into a virtual camera man which is doing the filming, it could help teach aspiring cinematographers the ways that very intricate shots are done.", :user => nick_user)
Idea.create(:blurb => "GPS with routes that maximize MPG", :photo => File.open(File.join(Rails.root, 'app', 'assets', 'images', 'audi.jpg')), :user => james_user)
Idea.create(:blurb => "A Browser Extension That Lets You Choose What You Censor", :user => asaf_user)
Idea.create(:blurb => "Fundraising website that lets common people tell politicians if you vote for X we will donate $ to whoever runs against you", :user => nick_user)
Idea.create(:blurb => "Jukebox app for bars", :photo => File.open(File.join(Rails.root, 'app', 'assets', 'images', 'jukebox.jpg')), :user => james_user)
Idea.create(:blurb => "A resume that illustrates your present ability rather than your employment history", :user => asaf_user)
Idea.create(:blurb => "A microwave with a built-in whisk/stirrer so you don't have to remove your food every two minutes and stir it", :user => nick_user)
Idea.create(:blurb => "Wind turbines along highways and interstates", :problem => "All of the vertical space along highways is unused across the globe. As of 2010 there are 47,182 miles of unused vertical space along highways alone!  We need to supply power to highways to power lights, call boxes, toll booths, etc. Getting power to highways greatly increases the cost of construction.", :solution => "Wind turbines can be installed along highways and interstates because the higher elevation escapes most housing and buildings, giving the turbine the most efficient wind possible.  These wind turbines can produce enough power for lights on the highway and pass extra power to the powerlines below.  This will greatly offset the additional electric costs from highways and help offset the pollution created from cars driving along these highways.", :photo => File.open(File.join(Rails.root, 'app', 'assets', 'images', 'turbine.jpg')), :user => james_user)
Idea.create(:blurb => "A website that tells you if you will need the assigned textbook for that class/professor", :problem => "Many university classes require thousands of dollars worth of textbooks.  Many students purchase many 'required' expensive textbooks to find out that some are simply never opened the entire semester, and must then resell a textbook that has lost most of it's value.", :solution => "A website where students specify their university, class, and professor and state for each of the required textbooks, if they actually used it.  If the student actually used the book they will rate how often and how necessary the book was.  The website will then display easy to read statistics to help a student determine which of the mandatory textbooks are actually needed and are useful.", :user => asaf_user)
Idea.create(:blurb => "An app that automates electronic charting, giving doctors more time to spend helping patients", :user => nick_user)
idea1 = Idea.create(:blurb => "Import a video, and see how the camera moved as the shot filmed, using a virtual person holding a camera.", :photo => File.open(File.join(Rails.root, 'app', 'assets', 'images', 'photography.jpg')), :problem => "We are currently unable to learn filming techniques without in-person training.  Many of my friend spend hundreds of dollars on lessons in cinamatogrphy, learning the best angles for the shots that we want to include in our films. Watching videos definitely helps to learn cinematography, but seeing what is done behind the camera for every shot would be very useful.", :solution => "I imagine a solution where a device can be added to a camera during a shot, and the motion is detected to recoginze the speed and direction of the camera's motion, as well as the ways it is tilted and turned. If this motion can then be translated into a virtual camera man which is doing the filming, it could help teach aspiring cinematographers the ways that very intricate shots are done.", :user => nick_user)
contributor1 = idea1.contributors.create(user: asaf_user, idea: idea1)
idea1.updates.create(user: asaf_user, contributor: contributor1, idea: idea1, description: "Initialized github repo")


