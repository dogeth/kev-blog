class BlogController < ApplicationController  
  
  def index
    @entries = Entry.all(:order => 'created_at desc')
      
  end         

  def show
    @entry = Entry.find(params[:id])
  end
  
  
end
