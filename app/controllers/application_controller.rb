class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_videos

  def get_videos
    @videos = Video.all
    @featured = Video.where(:featured => true).limit(10)
    @list = [];
    @category = [];
    @categories = Video.uniq.pluck(:category)
  end
end
