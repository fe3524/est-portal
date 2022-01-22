class PostPdfController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.pdf do
        post_pdf = PracticePdf::PostPdf.new
        send_data post_pdf.render,
                  filename: '20220120_知多工業様_概算御見積.pdf',
                  type: 'application/pdf',
                  disposition: 'inline' # 外すとダウンロード
      end
    end
  end
end
