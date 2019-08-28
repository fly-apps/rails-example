class ApplicationController < ActionController::Base
  before_action do
    @author = cookies[:author] ||= Faker::Internet.username
  end
end
