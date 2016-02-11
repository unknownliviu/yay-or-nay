class GameController < ApplicationController
  before_action :load_profiles

  def index
  end

  def vote
    @profile = Profile.find(params[:id])
    @profile.votes = @profile.votes + 1
    @profile.save
    redirect_to game_path
  end

  private

  def load_profiles
    @profiles = Profile.order("RANDOM()").first(2)
  end

end
