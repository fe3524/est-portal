module PracticePdf
  class PostPdf < Prawn::Document
    def initialize
      super(
        page_size: 'A4'
      )

      stroke_axis # 座標を表示
      font 'app/assets/fonts/ipaexg.ttf' # フォント指定
    end
  end
end
