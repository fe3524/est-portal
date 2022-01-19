class PostPdfController < ApplicationController
  def index
    @mypages = Mypage.all
    @users = User.all

    respond_to do |format|
      format.pdf do
        post_pdf = PracticePdf::PostPdf.new(@mypages, @users).render
        send_data post_pdf,
                  filename: 'post_pdf.pdf',
                  type: 'application/pdf',
                  disposition: 'inline' # 外すとダウンロード
      end
    end
  end
end


