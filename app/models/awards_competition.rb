class AwardsCompetition < ActiveRecord::Base
  belongs_to :competition
  belongs_to :award
end
