class AwardsCompetition < ActiveRecord::Base
  belongs_to :competition
  belongs_to :award
  
  validates_presence_of :competition_id, :award_id
end
