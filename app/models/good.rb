# == Schema Information
#
# Table name: goods
#
#  id              :integer          not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  post_id         :integer
#  virtual_user_id :integer
#
class Good < ApplicationRecord
  # 関連
  belongs_to :virtual_user
  belongs_to :post


  # バリデーション
  validates :virtual_user_id, presence: true
  validates :post_id, presence: true
  validates :virtual_user_id, uniqueness: { scope: :post_id, message: "このいいねはすでに存在します" }
end
