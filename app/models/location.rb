class Location < ActiveRecord::Base
 attr_accessible :address, :latitude, :longitude, :name, :comment
  geocoded_by:address
  after_validation:geocode, :if=>:address_changed?
  
 
 reverse_geocoded_by :latitude, :longitude
 after_validation :reverse_geocode  
  
  acts_as_gmappable :lat =>'latitude', :lng =>'longitude',
  :check_process => :prevent_geocoding,
  :addrss=> "address", :normalized_address =>"address"
  
def gmaps4rails_address
   
   address
   
 end
end


