class UsersController < ApplicationController
   def show 
     @cool = Coolpeople.all
     @coolpeople = Coolpeople.find_by(id: params["id"])
     render 'show'
   end
  
  def showwm
    @coolpeople = Coolpeople.find_by(id: params["id"])
    @cool = Coolpeople.all
    render 'showwm'
   end
  
  def delsure
    @coolpeople = Coolpeople.find_by(id: params["id"])
    @cool = Coolpeople.all
    render 'delsure'
  end
  
  def new
    @cool = Coolpeople.all
  end
  
  def create
    @cool = Coolpeople.new
    @cool.name = params['name']
    @cool.date = params['date']
    @cool.location = params['location']
    @cool.imgurl = params['imgurl']
    @cool.barpercent = params['barpercent']
    @cool.desc = params['desc']
    if @cool.save
      redirect_to "/userpage/#{ @cool.id }"
    else
      render 'new'
    end
  end
  
  def edit
    @coolpeople = Coolpeople.find_by(id: params['id'])
    @cool = Coolpeople.all
  end
  
  def update
    @cool = Coolpeople.find_by(id: params['id'])
    @cool.name = params['name']
    @cool.date = params['date']
    @cool.location = params['location']
    @cool.imgurl = params['imgurl']
    @cool.barpercent = params['barpercent']
    @cool.desc = params['desc']
    if @cool.save
      redirect_to "/userpage/#{ @cool.id }/wm"
    else
      render 'edit'
    end
  end
  
  def destroy
    @cool = Coolpeople.find_by(id: params['id'])
    @cool.destroy
    redirect_to "/userpage"
  end
  
  def index
    @cool = Coolpeople.all
  end
end
