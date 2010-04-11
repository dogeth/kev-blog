class BlogController < ApplicationController  
  
  def index
    @entries = Entry.all(:order => 'created_at desc')
      
  end         

  def show
    @entry = Entry.find(params[:id])
  end
  
  def add_comment
    @entry = Entry.find(params[:id])
    # @comment = Comment.new(:entry => @entry, :user => params[:user], :body => params[:body])
    @comment = @entry.comments.build(:user => params[:comment][:user], :body => params[:comment][:body], :email => params[:comment][:email])
    if @comment.save
      flash[:notice] = 'Comment added successfully.'
      redirect_to blog_path(@entry)
    else
      render :action => 'show'
    end
  end
  
end
