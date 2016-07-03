class HistoryController < ApplicationController
  skip_before_filter :authorize, :only => [:history, :awards]
  
  def history
    
    @years = Year.order("start_date desc")
    @games = Game.joins(:year).order("start_date desc")
    if !params[:game].nil?
      @game = Game.where(:name=>params[:game]).first
    elsif !Year.current_year.nil?
      @game = Year.current_year.game
    else
      @game = nil
    end
    @sponsors_by_level = @game.year.sponsor_years.group_by{ |sponsor| sponsor.sponsor_level}.sort_by{ |order| order[0].order}
    #doesn't render normal page layout
    render layout: false
  end
  def awards
    @games = Game.joins(:year).order("start_date desc")
  end
end
