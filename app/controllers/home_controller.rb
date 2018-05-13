class HomeController < ApplicationController
  def index
  end

  def show
  end
  def cv1
  	SendMail.new(params[:mail]).perform
  	User.create(:email => params[:mail])
  end
  def cv
  end
end
