require 'faker'

namespace :dummy do
  desc "USAGE: for each rake tasks you can run it individually or all together. rake dummy:all or rake dummy:categories"

  task posts: :environment do
    # Post.destroy_all
    tags = ["el", "en", "test1", "test2", "personal", "ruby", "rails"]
    user = User.first
    100.times do
      tmp_post = Post.new(user_id: user.id, active: true, published: Time.now, page_title: Faker::Lorem.words(3).join(' '), body: Faker::Lorem.paragraph(2), meta_description: Faker::Lorem.words(6).join(' '))
      tmp_post.tag_list = tags.shuffle[0..3].join(", ")
      tmp_post.save
    end
  end
end