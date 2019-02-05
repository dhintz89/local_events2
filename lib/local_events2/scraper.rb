jen hansen - CLI section lead


# Scraper class used for finding Events and building Event Instances

class LocalEvents2::Scraper
  @@activity_types = []
  
#----- Universal Methods

  def self.get_page(url)
    Nokogiri::HTML(open(url))
  end

#----- Methods to manage Activity Type List for Main Menu  

  def self.activity_types
    @@all
  end
  
  def self.display_activity_types
    self.activity_types.each.with_index(1) do |type, i|
      puts "#{i}: #{type}"
    end
  end
  
  def self.refresh_activity_types
    self.activity_types.clear
    landing_page = self.get_page("https://www.eventsnearhere.com/")
    landing_page.css"div.event-copy-box div.form-group:nth-child(2) option[value]").each {|cat| @@activity_types << cat.text}
    @@activity_types.shift
  end

#----- Methods for searching and returning results for Event creation

  def self.collect_parameters
    
  end
  
  def self.search(parameters)
    
  end
  
  def self.get_results
    
  end

#----- Method for scraping individual event page for details

  def self.scrape_event_details(page_link)
    
  end

end