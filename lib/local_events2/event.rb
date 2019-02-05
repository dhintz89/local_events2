# Event class used for storing event info found by Scraper

class LocalEvents::Event
  attr_accessor :name, :location, :start_date, :end_date, :description, :page_link, :price, :address, :contact_name, :phone, :email, :event_link
  
  @@all = []
  
#------ self-create instance based on the values of the event_hash passed in when create_events method calls this

  def initialize(event_hash)
    
  end
  
# instance methods

#------ adds details to selected event
  def add_properties(event_details_hash)
    
  end
  
#------ uses instance with added details to create a Details View for selected event instance
  def display_full_event
    
  end
  
# class methods

  def self.save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    self.all.clear
  end
  
#------ self-creates event instances based on array of event hashes
#------ calls upon initialize and passes in one hash at a time
  def self.create_events(events_list)
    
  end
  
#------ displays summarized events created from above method
  def self.display_events
    
  end
  
end