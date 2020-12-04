class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end
  def presentation
  end
  def organisation
  end
  def figures
  end
  def history
  end
  def sites
  end
  def subsidiaries
  end
  def concrete
  end
  def quarries
  end
  def publics
  end
  def mentions
  end
end
