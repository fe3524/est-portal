class PostPdfController < ApplicationController
  def index

    respond_to do |format|
      format.html
      format.pdf do
        post_pdf = PracticePdf::PostPdf.new
        send_data post_pdf.render,
                  filename: 'post_pdf.pdf',
                  type: 'application/pdf',
                  disposition: 'inline' # 外すとダウンロード
      end
    end
  end
end
