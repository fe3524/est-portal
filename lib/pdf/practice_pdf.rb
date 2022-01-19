module PracticePdf
  class PostPdf < Prawn::Document
    def initialize(mypages,users)
      super(
        page_size: 'A4',
        top_margin: 30,
        bottom_margin: 30,
        left_margin: 20,
        right_margin: 20
      )

      @mypages = mypages
      @users = users

      font 'app/assets/fonts/ipaexg.ttf'

      stroke_axis #実装後削除

      # contents表示
      corporate_logo
      header
      move_down 320
      contents
    end

    # contents生成
    def corporate_logo
      image 'app/assets/images/logos/—Pngtree—creative company logo_1197025.png', at: [0, 800], width: 80
    end

    def header
      text_box '概 算 御 見 積', at: [0, 780], width: 550, height: 30, align: :center, valign: :center, size: 18
      text_box '令和4年1月19日', at: [0, 740], width: 550, height: 30, align: :right, valign: :center, size: 9
      text_box '神奈川-22-001', at: [0, 730], width: 550, height: 30, align: :right, valign: :center, size: 9
      text_box 'ABCコミュニケーションズ株式会社 御中', at: [0, 700], width: 550, height: 30, align: :left, valign: :center, size: 16

      text_box '下記の通り御見積申し上げます。', at: [10, 670], width: 550, height: 30, align: :left, valign: :center, size: 12
      text_box '何卒ご用命賜りますようお願い申し上げます。', at: [10, 655], width: 550, height: 30, align: :left, valign: :center, size: 12

      text_box 'MTTコミュニケーションズ株式会社', at: [10, 670], width: 550, height: 30, align: :right, valign: :center, size: 9
      text_box '神奈川営業所', at: [10, 655], width: 550, height: 30, align: :right, valign: :center, size: 9
      text_box '営業担当：内田達也', at: [10, 640], width: 550, height: 30, align: :right, valign: :center, size: 9
      text_box '連絡先：050-0000-0000', at: [10, 625], width: 550, height: 30, align: :right, valign: :center, size: 9

      text_box '件　　名：クラウドPBX導入／本社', at: [10, 600], width: 550, height: 30, align: :left, valign: :center, size: 12
      text_box '導入納期：通常６ヶ月', at: [10, 580], width: 550, height: 30, align: :left, valign: :center, size: 12
      text_box '見積期限：１ヶ月', at: [10, 560], width: 550, height: 30, align: :left, valign: :center, size: 12

      text_box '初期費用合計：¥890,000-（税込）', at: [10, 540], width: 550, height: 30, align: :right, valign: :center, size: 12
      text_box '月額費用合計：¥160,000-（税込）', at: [10, 520], width: 550, height: 30, align: :right, valign: :center, size: 12
    end

    def contents
      rows = [
        ['項目','単価','数量','金額','合計'],
        ['項目１','50,000','1','50,000','50,000']
      ]
    end
  end
end
