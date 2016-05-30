class HistoryController < ApplicationController
  def history
    
    @years = Year.order("start_date desc")
    @games = Game.joins(:year).order("start_date desc")
    if !params[:game].nil?
      @game = Game.where(:name=>params[:game]).first
    else
      @game = Year.current_year.game
    end
    
    #doesn't render normal page layout
    render layout: false
  end
  def awards
    @games = Game.joins(:year).order("start_date desc")
  end
end