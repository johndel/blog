atom_feed do |feed|
  feed.title "JohnDel's Blog"
  feed.updated @posts.maximum(:updated_at)
  @posts.each do |post|
    feed.entry post, published: post.published do |entry|
      entry.title post.page_title
      entry.content post.body
      entry.author do |author|
        author.name post.user.email
      end
    end
  end
end