class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home; end

  def presentation; end

  def organisation; end

  def figures; end

  def history; end

  def sites
    if params[:query]
      @sites = Site.where(kind: params[:query])
    else
      @sites = Site.all.reverse
    end
    @markers = @sites.map do |site|
      {
        lat: site.latitude,
        lng: site.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { site: site }),
        image_url: helpers.asset_url("marker-#{site.color}.png")
      }
    end
  end

  def subsidiaries; end

  def concrete; end

  def quarries; end

  def publics; end

  def mentions; end
end
