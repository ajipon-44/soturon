# == Schema Information
#
# Table name: virtual_users
#
#  id         :integer          not null, primary key
#  catch_copy :text
#  follow     :integer
#  follower   :integer
#  image      :text
#  name       :string
#  password   :string
#  sub_name   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class VirtualUser < ApplicationRecord
  # 関連
  has_many :posts, dependent: :destroy


  # バリデーション
  validates :name, presence: true
  validates :sub_name, presence: true
end
