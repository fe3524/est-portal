class MypagesController < ApplicationController
  def index
    @mypages = Mypage.all
  end

  def new
    @mypage = Mypage.new
  end

  def show
  end

  def create
    Mypage.create(mypage_params)
  end

  private
  def mypage_params
    params.require(:mypage).permit()
end
