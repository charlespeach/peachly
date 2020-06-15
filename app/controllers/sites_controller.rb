class SitesController < ApplicationController
  def create
    if site = Site.find_or_create_by(url: site_params[:url])
      session[:peachlies] = { site_params[:url] => site.peachly_url }.merge(session[:peachlies] || {})

      redirect_to root_path, flash: { notice: 'Peachly created' }
    else
      redirect_to root_path, flash: { error: 'There was an issue creating your Peachly' }
    end
  end

  private

  def site_params
    params.require(:site).permit(:url)
  end
end