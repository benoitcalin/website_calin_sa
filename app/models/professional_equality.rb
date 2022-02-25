class ProfessionalEquality < ApplicationRecord
  validates_uniqueness_of :technical_name
end
