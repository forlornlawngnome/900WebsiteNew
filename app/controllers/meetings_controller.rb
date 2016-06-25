class MeetingsController < ApplicationController
  skip_before_filter :authorize, :only => [:calendar]
  def calendar
  end
end
