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

  def concrete
    @carousel1 = Dir.glob("app/assets/images/concrete/carousel1/*")
    @carousel2 = Dir.glob("app/assets/images/concrete/carousel2/*")
    @carousel3 = Dir.glob("app/assets/images/concrete/carousel3/*")
  end

  def quarries
    @carousel1 = Dir.glob("app/assets/images/quarries/carousel1/*")
    @carousel2 = Dir.glob("app/assets/images/quarries/carousel2/*")
  end

  def publics
    @carousel1 = Dir.glob("app/assets/images/publics/carousel1/*")
    @carousel2 = Dir.glob("app/assets/images/publics/carousel2/*")
  end

  def mentions; end
end
