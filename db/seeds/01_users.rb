# Users
puts "Starting seeding of users..."
user = User.new(username: "JohnDel", email: "istoselidas@gmail.com", password: "testtest", password_confirmation: "testtest")
user.save(validate: false) # password: 'john12' encrypted_password: "johndel12"
puts "...end user seeding."