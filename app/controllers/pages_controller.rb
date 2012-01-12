class PagesController < ApplicationController

  def home
    @title = "Startseite"
      end
  def contact
    @title = "Kontakt"
  end
  def about
    @title = "Impressum"
  end
  
  def help  
    @title = "Hilfe"
  end
  
  def shop 
    @title = "Shop"
  end

  def circle 
    @title = "Umkreissuche"
  end
  
  def myroutes 
    @title = "Meine Routen"
  end
  
end