class GeektoeicsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  
    def index
        @geektoeics = Geektoeic.all
        search = params[:search]
        @geektoeics = @geektoeics.joins(:user).where("comment LIKE ?", "%#{search}%") if search.present?
       
      
        @geektoeics = @geektoeics.page(params[:page]).per(3)
    end
  
  
  def new
    @geektoeic = Geektoeic.new
  end

  
  def create
    geektoeic = Geektoeic.new(geektoeic_params)

    geektoeic.user_id = current_user.id  

    if geektoeic.save!
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  def show
    @geektoeic = Geektoeic.find(params[:id])
    @comments = @geektoeic.comments
    @comment = Comment.new
  end

  def edit
    @geektoeic = Geektoeic.find(params[:id])
  end

  def update
    geektoeic = Geektoeic.find(params[:id])
    if geektoeic.update(geektoeic_params)
      redirect_to :action => "show", :id => geektoeic.id
    else
      redirect_to :action => "new"
    end
  end
  def destroy
    geektoeic = Geektoeic.find(params[:id])
    geektoeic.destroy
    redirect_to action: :index
  end

  private
  def geektoeic_params
    params.require(:geektoeic).permit(:comment, :image, :user_id, :date, :picture)
  
  end
end


