class Mypage < ApplicationRecord
  belongs_to :user
  has_many :post_pdf
end
