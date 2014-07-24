class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
   def show 
     @coolpeople = Coolpeople.find_by_id(params["id"])
    render 'show'
   end
  
  def new
  end
  
  def create
    g = Coolpeople.new
    g.name = params['name']
    g.date = params['date']
    g.location = params['location']
    g.imgurl = params['imgurl']
    g.barpercent = params['barpercent']
    g.desc = params['desc']
    g.save
    redirect_to '/userpage/#{ g.id }'
  end
end
