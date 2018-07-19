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
    @article.allergy =params[:allergy]
    @article.book = params[:book]
    @article.description = params[:description]
    @article.save
    redirect_to ("/welcome/index")
    
  end
  
  def detail
  end
  
end
