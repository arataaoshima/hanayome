class WelcomeController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def home
  end
  
  def attendance
   
  end
  
  def about
  end
  
  def place
  end
  
  def login
    
    @article = Article.new
    @article.name = params[:name]
    @article.email = params[:email]
    @article.save
    redirect_to ("/welcome/index")
    
  end
  
end
