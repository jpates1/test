require 'rss'

def fetch_rss_feed(url)
    # Fetch the RSS feed from the given URL
    rss = RSS::Parser.parse(url)
  
    # Return the parsed RSS feed
    return rss
  end

  def scrape_rss_feed(rss)
    # Create an array to store the scraped information
    scraped_data = []
  
    # Loop through each item in the RSS feed
    rss.items.each do |item|
      # Scrape the title and link from the item
      data = {
        title: item.title,
        link: item.description
      }
  
      # Add the scraped information to the array
      scraped_data << data
    end
  
    # Return the array of scraped information
    return scraped_data
  end

# Define the URL of the RSS feed you want to scrape
rss_url = "https://medium.com/feed/@olegchursin/"

# Fetch the RSS feed
rss = fetch_rss_feed(rss_url)

# Scrape the information from the feed
scraped_data = scrape_rss_feed(rss)

# Print the scraped information to the terminal
puts scraped_data