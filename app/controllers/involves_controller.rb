class InvolvesController < ApplicationController
  skip_before_filter :authorize, :only => [:involved]

  def involved
  end
end
