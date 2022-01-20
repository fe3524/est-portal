class PostPdf < ApplicationRecord
  belongs_to :user
  has_many :mypage
end
