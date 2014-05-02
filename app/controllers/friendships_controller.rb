class FriendshipsController < ApplicationController

  def create
    @friendship = current_user.friendships.build(friend_id: params[:friend_id])
    if @friendship.save
      flash[:notice] = "Added Friend."
      redirect_to root_path
    else
      flash[:notice] = "Unable to Add."
      redirect_to root_path
    end
  end

  def destroy 
    friendship = Friendship.find(params[:id])
    friendship.destroy
    flash[:notice] = "Successfully removed friendship."
    redirect_to root_path
  end

  private

  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end

end
