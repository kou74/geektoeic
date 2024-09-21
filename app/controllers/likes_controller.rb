class LikesController < ApplicationController

  def create
    like = current_user.likes.create(geektoeic_id: params[:geektoeic_id]) 
    redirect_back(fallback_location: root_path)
  end

  def destroy
    like = Like.find_by(geektoeic_id: params[:geektoeic_id], user_id: current_user.id)
    like.destroy
    redirect_back(fallback_location: root_path)
  end

end