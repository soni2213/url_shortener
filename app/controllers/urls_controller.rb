class UrlsController < ApplicationController
  before_action :url_params, only: [:create]
  def create
    md5 = Digest::MD5.hexdigest(params[:original_url])
    short_url = "#{md5}/cybri.lla"
    url_params.merge!(short_url)
    @url = Url.new(url_params)
    if @url.save
      #redirect_to @url
    else
      #
    end
  end

  private 
  def url_params
    params.require(:users).permit(:original_url)
  end
end
