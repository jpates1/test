require 'rss'
require 'open-uri'

def get_url
print "please enter the url: "
url = gets
safeurl = URI.encode(url.strip)
end 


open(get_url) do |rss|
  feed = RSS::Parser.parse(rss)
  puts "Title: #{feed.channel.title}"
  feed.items.each do |item|
    puts "Item: #{item.title}"
  end
end