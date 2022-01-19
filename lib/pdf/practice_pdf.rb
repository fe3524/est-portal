module PracticePdf
  class PostPdf < Prawn::Document
    def initialize(mypages,users)
      super(
        page_size: 'A4'
      )

      @mypages = mypages
      @users = users

      font 'app/assets/fonts/ipaexg.ttf'

      stroke_axis

      # 下記で作成したコンポーネントを表示順に
      header

      corporate_logo
      move_down 50
      contents

    end

    # コンポーネント作成
    def header

    text "#{@users}"

    @users.each do |user|
      text "#{user.user_name}"
    end
    
    text '概算御見積', size: 25
      move_down 20
      text '作成者氏名', size: 14
    end

    def corporate_logo
      image 'app/assets/images/logos/—Pngtree—creative company logo_1197025.png', at: [425, 780], width: 100
    end

    def contents
      text '本文'
      move_down 10
      text 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
            Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
            Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
            Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

    end
  end
end
