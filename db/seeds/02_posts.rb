# Posts
puts "Starting seeding of users..."
homepage = Post.create(slug: "homepage", page_title: "Default Homepage Title", tag_list: "homepage", published: Time.now - 1.minute, active: true)
about = Post.create(slug: "about", page_title: "Default About Title", tag_list: "about", published: Time.now - 1.minute, active: true)
puts "...end post / static pages seeding."