class PagesController < ApplicationController
  before_action :authenticate_user!, only: :ioc

  def home
  end

  def verify
  end

  def ioc
  end
end
