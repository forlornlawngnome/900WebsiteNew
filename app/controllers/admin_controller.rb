class AdminController < ApplicationController
  def admin
    @obj_types = ActiveRecord::Base.connection.tables.map{|x|x.classify.safe_constantize}.compact.sort_by{|x| x.name}
  end
end
