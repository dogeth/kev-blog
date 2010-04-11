Given /^I am logged in as an author$/ do
end

Given /^there are entries:$/ do |table|
  # table is a Cucumber::Ast::Table
  # | title | content |
  # | My first post | This is my first post |
  # | My last post | Sorry, shutting down blog |
  table.hashes.each do |entry|
    #Entry.create :title => entry[:title], :content => entry[:content]
    Entry.create! entry
  end
# [["My first post", "This is my first post"], ["My last post", "Sorry, shutting down blog"]]
# [{"title"=>"My first post", "content"=>"This is my first post"}, {"title"=>"My last post", "content"=>"Sorry, shutting down blog"}]

end
