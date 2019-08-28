class ChirpsController < ApplicationController
  def index
    @chirps = Chirp.order(created_at: :desc)
  end

  def create
    @chirp = Chirp.new(params.require(:chirp).permit(:text).merge({
      author: @author
    }))
 
    @chirp.save
    redirect_to root_url
  end
end
