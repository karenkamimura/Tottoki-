namespace :sync do
  task blogs: :environment do
    Blog.all.each do |blog|
      content = Feedjira::Feed.fetch_and_parse blog.url
      content.entries.each do |entry|
        local_entry = blog.entries.where(title: entry.title).first_or_initialize
        local_entry.update_attributes(content: entry.content, author: entry.author, url: entry.url, published: entry.published)
        p "Synced Entry - #{entry.title}"
      end
      p "Synced Blog - #{blog.name}"
    end
  end
end
