class IndexController < ApplicationController
  before_action :check_signed_in, only: [:login, :signup]

  def index
  end

  def login
  end

  def signup
  end

  def about
  end

  def check_signed_in
    redirect_to '/' if signed_in?
  end
end
