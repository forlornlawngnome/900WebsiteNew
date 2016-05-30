class Involve < ActiveRecord::Base
  validates_presence_of :blurb, :order
end
