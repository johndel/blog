# My Blog (JohnDel)
[![Code Climate](https://codeclimate.com/repos/523533ccc7f3a34da00264e2/badges/f81894496e709ffb264e/gpa.png)](https://codeclimate.com/repos/523533ccc7f3a34da00264e2/feed)
I've created a simple blog but with all the necessary functionality. Check it out and send me an email (istoselidas@gmail.com) of what you think.


## Basic installation
- Well, do a grep and change the name "JohnDelBlog" in whatever you want your project's name to be
- Change the file `config/initializers/secret_token.rb` (run `rake secret` and replace it with the generated)
- Change the `db/seeds/01_users.rb` and `db/seeds/02_posts.rb` according to your preferences
- Do a `rake db:dev:init` (it needs postgresql), it will create the database from scratch
- Change `posts/show.html.erb` disqus variables
- Change S3 bucket credentials from the file `config/initializers/carrierwave.rb`
...and you are good to go with a basic setup!

## Other useful information
By default I am creating two pages, "homepage" and "about" which also are the slugs and the tags that it will bind with the menu and the rest of the code. If you want to change it, see the Post.rb model and front/post_controller.rb


##### TODO:
- Add Design
