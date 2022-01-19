class PdfsController < ApplicationController
  def index
  end

  def sample_doc
    report = Thinreports::Report.new(layout: "#{Rails.root}/app/pdfs/test.tlf")

    report.start_new_page
    # さっき作った title に value つっこんでる
    report.page.item(:title).value('PDFやで')
    # title 以外はあとでやるのでここではスルーします

    file = report.generate
    send_data(
      file,
      filename: 'filename_sample.pdf',
      type: 'application/pdf',
      disposition: 'inline'
    )
  end
end
