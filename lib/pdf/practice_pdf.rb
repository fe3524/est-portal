module PracticePdf
  class PostPdf < Prawn::Document
    def initialize #(mypages, users)
      super(
        page_size: 'A4',
        top_margin: 30,
        bottom_margin: 30,
        left_margin: 20,
        right_margin: 20
      )

      font 'app/assets/fonts/ipaexg.ttf'

      # stroke_axis

      # contents表示
      corporate_logo
      header
      sample_stamp
      move_down 320
      initial_cost
      move_down 50
      running_cost
      move_down 50
    end

    # contents生成
    def corporate_logo
      image 'app/assets/images/logos/—Pngtree—creative company logo_1197025.png', at: [0, 800], width: 80
    end

    def sample_stamp
      image 'app/assets/images/logos/stamp.png', at: [520, 600], width: 40
    end


    def header
      text_box '概 算 御 見 積', at: [0, 780], width: 550, height: 30, align: :center, valign: :center, size: 18
      text_box '2022年1月20日', at: [0, 740], width: 550, height: 30, align: :right, valign: :center, size: 9
      text_box '神奈川-22-004', at: [0, 730], width: 550, height: 30, align: :right, valign: :center, size: 9
      text_box '知多工業株式会社 御中', at: [0, 700], width: 550, height: 30, align: :left, valign: :center, size: 16

      text_box '下記の通り御見積申し上げます。', at: [10, 670], width: 550, height: 30, align: :left, valign: :center, size: 12
      text_box '何卒ご用命賜りますようお願い申し上げます。', at: [10, 655], width: 550, height: 30, align: :left, valign: :center, size: 12

      text_box 'OTTコミュニケーションズ株式会社', at: [10, 670], width: 550, height: 30, align: :right, valign: :center, size: 9
      text_box '神奈川営業所', at: [10, 655], width: 550, height: 30, align: :right, valign: :center, size: 9
      text_box '営業担当：内田達也', at: [10, 640], width: 550, height: 30, align: :right, valign: :center, size: 9
      text_box '連絡先：050-0000-0000', at: [10, 625], width: 550, height: 30, align: :right, valign: :center, size: 9

      text_box '件　　名：貴社VPN構築・クラウドPBX導入', at: [10, 600], width: 550, height: 30, align: :left, valign: :center, size: 12
      text_box '導入納期：通常６ヶ月', at: [10, 580], width: 550, height: 30, align: :left, valign: :center, size: 12
      text_box '見積期限：１ヶ月', at: [10, 560], width: 550, height: 30, align: :left, valign: :center, size: 12
      text_box '提供条件：約款／特約適用', at: [10, 540], width: 550, height: 30, align: :left, valign: :center, size: 12


      text_box '初期費用合計：　¥158,000-（税込）', at: [10, 540], width: 550, height: 30, align: :right, valign: :center, size: 12
      text_box '月額費用合計：¥7,055,000-（税込）', at: [10, 520], width: 550, height: 30, align: :right, valign: :center, size: 12
    end

    def initial_cost
      text_box '初期費用', at: [10, 500], width: 550, height: 30, align: :left, valign: :center, size: 14

      rows = [
        [{ content: '項目　　　　　　　　　　　　　', colspan: 2 }, '　単　価　', '数　量', '　合　計　', '　備　考　'],
        [{ content: 'ネットワーク工事費　　　　　　', colspan: 2 }, '¥22,000-', '　　　　5', '¥110,000-', 'イーサ線工事含む　　　'],
        [{ content: '設備利用工事費　　　　　　　　', colspan: 2 }, '¥15,000-', '　　　　1', '¥15,000-', '横浜第１ＤＣ利用　　　　'],
        [{ content: 'オンサイト工事費　　　　　　　', colspan: 2 }, '¥55,000-', '　　　　6', '¥330,000-', '土日休日加算　　　　　　']
      ]

      table rows, cell_style: { size: 12, padding: 5 } do
        cells.borders = %i[top left right bottom]
        row(0).background_color = 'F5F5F5'
        row(0).align = :center
      end
    end

    def running_cost
      text_box '月額費用', at: [10, 360], width: 550, height: 30, align: :left, valign: :center, size: 14

      rows = [
        [{ content: '項目　　　　　　　　　　　　　', colspan: 2 }, '　単　価　', '数　量', '　合　計　', '　備　考　'],
        [{ content: 'ネットワーク利用料　　　　　　', colspan: 2 }, '¥8,000-', '5', '¥40,000-', 'ＶＰＮ利用料　　　　　　'],
        [{ content: '回線利用料　　　　　　　　　　', colspan: 2 }, '¥720,000-', '5', '¥3,600,000-', 'ギャランティアクセス1G'],
        [{ content: 'バックアップ利用料　　　　　　', colspan: 2 }, '¥150,000-', '5', '¥750,000-', 'ギャランティアクセス100M'],
        [{ content: 'クラウド利用料　　　　　　　　', colspan: 2 }, '¥5,000-', '5', '¥25,000-', 'ＰＢＸ利用料　　　　　　'],
        [{ content: 'ID利用料　　　　　　　　　　', colspan: 2 }, '¥500-', '1650', '¥825,000-', '１ユーザー毎'],
        [{ content: '外線サービス利用料　　　　　', colspan: 2 }, '¥1,100-', '1650', '¥1,815,000-', '１番号１ch×ユーザー毎']
      ]

      table rows, cell_style: { size: 12, padding: 5 } do
        cells.borders = %i[top left right bottom]
        row(0).background_color = 'F5F5F5'
        row(0).align = :center
      end
    end
  end
end
