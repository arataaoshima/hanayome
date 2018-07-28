class WelcomeController < ApplicationController
  
    def index
      @articles = Article.all
    end
  
    def home
        if @current_user == nil
        redirect_to("/")
    　   end
    end
  
    def attendance
        if @current_user == nil
        redirect_to("/")
    　   end
    end
  
    def about
      if @current_user == nil
        redirect_to("/")
      end
    end
  
    def place
      if @current_user == nil
        redirect_to("/")
      end
    end
  
    def login
      
      @article = Article.new
      @article.name = params[:name]
      @article.email = params[:email]
      @article.allergy =params[:allergy]
      @article.book = params[:book]
      @article.description = params[:description]
      @article.attendance = params[:attendance]
  
      @article.save
      redirect_to ("/welcome/home")
      
    end
  
    def detail
      if @current_user == nil
        redirect_to("/")
      end
    end
  
end
