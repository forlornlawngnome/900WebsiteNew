class WelcomeController < ApplicationController
  skip_before_filter :authorize
  def index
    @post = Post.where(:active=>true).order("date_published desc").limit(1).first
  end
end
