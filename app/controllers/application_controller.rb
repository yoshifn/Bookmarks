class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.gjhbjh
  protect_from_forgery with: :exception
  def index
    @links = Link.all
  end
  
  def show
    @link = Link.find_by_id(params['id'])
    render 'show'
  end
  
  def create
    link = Link.new
    link.name = params['name']
    link.url = params['url']
    link.save
    redirect_to "/link/#{ link.id }"
  end
  
  def edit
    @link = Link.find_by_id(params['id'])
    
  end
  
  def update
    link = Link.find_by_id(params['id'])
    link.name = params['name']
    link.url = params['url']
    link.save
    redirect_to "/link/#{ link.id }"
  end
end
