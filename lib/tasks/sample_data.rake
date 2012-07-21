namespace :db do
	desc "Fill database with sample data"
	task :populate => :environment do
		Rake::Task['db:reset'].invoke
		User.create!(:name => "Example User",
					 :email => "example@floopygoopy.com",
					 :password => "foobar",
					 :password_confirmation => "foobar")
		99.times do |n|
			name = Faker::name.name
			email = "example-#{n+1}@floopygoopy.com"
			password = "password"
			User.create!(:name => name,
					 	 :email => email,
					 	 :password => password,
						 :password_confirmation => password)
		end
	end
end