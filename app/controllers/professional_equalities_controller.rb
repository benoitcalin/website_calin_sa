class ProfessionalEqualitiesController < ApplicationController
  def show
    @professional_equality = ProfessionalEquality.find_by(technical_name: 'only_instance')
  end

  def edit
    @professional_equality = ProfessionalEquality.find_by(technical_name: 'only_instance')
  end

  def update
    @professional_equality = ProfessionalEquality.find_by(technical_name: 'only_instance')
    @professional_equality.update(professional_equality_params)
    redirect_to professional_equality_path(@professional_equality)
  end

  private

  def professional_equality_params
    params.require(:professional_equality).permit(:year, :index, :pay_gap_result, :pay_gap_points, :increase_gap_result, :increase_gap_points, :maternity_increase_result, :maternity_increase_points, :high_remuneration_result, :high_remuneration_points, :actions_comment)
  end
end

