# == Schema Information
#
# Table name: virtual_users
#
#  id         :integer          not null, primary key
#  catch_copy :text
#  follow     :integer
#  follower   :integer
#  image      :string
#  name       :string
#  sub_name   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class VirtualUser < ApplicationRecord
  # 関連
  has_many :posts, dependent: :destroy
  has_many :follows, dependent: :destroy
  has_many :followings, through: :follows, source: :follower
  has_many :passive_follows, class_name: 'Follow', foreign_key: 'follower_id', dependent: :destroy
  has_many :followers, through: :passive_follows, source: :virtual_user
  has_many :goods
  has_many :favorites, through: :goods, source: :post
  has_one :answer, dependent: :destroy


  # 委譲
  def followings_count; followings.count; end
  def followers_count; followers.count; end


  # バリデーション
  validates :name, presence: true
  validates :sub_name, presence: true
end
