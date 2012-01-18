class Location < ActiveRecord::Base
 attr_accessible :address, :latitude, :longitude
  geocoded_by:address
  after_validation:geocode, :if=>:address_changed?
  
  acts_as_gmappable :lat =>'latitude', :lng =>'longitude',
  :check_process => :prevent_geocoding,
  :addrss=> "address", :normalized_address =>"address"
  
def gmaps4rails_address
   
   address 
 end
end


