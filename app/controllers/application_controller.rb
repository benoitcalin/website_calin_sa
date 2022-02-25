class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    professional_equality = ProfessionalEquality.find_by(technical_name: 'only_instance')
    if professional_equality
      professional_equality_path(professional_equality)
    else
      root_path
    end
  end
end
