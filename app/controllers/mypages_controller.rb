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
    params.require(:mypage).permit(
      :est_number,
      :issue_date,
      :exp_date,
      :destination,
      :title,
      :dl_date,
      :terms,
      :initial1,
      :initial1_vol,
      :initial1_price,
      :initial1_memo,
      :initial2,
      :initial2_vol,
      :initial2_price,
      :initial2_memo,
      :initial3,
      :initial3_vol,
      :initial3_price,
      :initial3_memo,
      :run1,
      :run1_vol,
      :run1_price,
      :run1_memo,
      :run2,
      :run2_vol,
      :run2_price,
      :run2_memo,
      :run3,
      :run3_vol,
      :run3_price,
      :run3_memo,
      :run4,
      :run4_vol,
      :run4_price,
      :run4_memo,
      :run5,
      :run5_vol,
      :run5_price,
      :run5_memo,
      :run6,
      :run6_vol,
      :run6_price,
      :run6_memo,
      :run7,
      :run7_vol,
      :run7_price,
      :run7_memo,
      :run8,
      :run8_vol,
      :run8_price,
      :run8_memo,
      :run9,
      :run9_vol,
      :run9_price,
      :run9_memo
    )
  end
end
