class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
   def show 
    @cool = Coolpeople.all
     @coolpeople = Coolpeople.find_by_id(params["id"])
     render 'show'
   end
  
  def showwm
     @coolpeople = Coolpeople.find_by_id(params["id"])
    render 'showwm'
   end
  
  def delsure
    @coolpeople = Coolpeople.find_by_id(params["id"])
    render 'delsure'
  end
  
  def new
    @cool = Coolpeople.all
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
    redirect_to "/userpage/#{ g.id }"
  end
  
  def edit
    @coolpeople = Coolpeople.find_by_id(params['id'])
  end
  
  def update
    g = Coolpeople.find_by_id(params['id'])
    g.name = params['name']
    g.date = params['date']
    g.location = params['location']
    g.imgurl = params['imgurl']
    g.barpercent = params['barpercent']
    g.desc = params['desc']
    g.save
    redirect_to "/userpage/#{ g.id }/wm"
  end
  
  def destroy
    g = Coolpeople.find_by_id(params['id'])
    g.destroy
    redirect_to "/userpage"
  end
  
  def index
    @coolpeople = Coolpeople.all
  end
end