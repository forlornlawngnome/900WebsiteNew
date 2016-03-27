class WelcomeController < ApplicationController
  def index
    @post = Post.where(:active=>true).order("date_published desc").limit(1).first
  end
end
