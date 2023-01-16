# == Schema Information
#
# Table name: virtual_users
#
#  id         :bigint           not null, primary key
#  address    :string
#  belonging  :string
#  catch_copy :text
#  image      :string
#  name       :string
#  real_name  :string
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

  # 委譲
  def followings_count; followings.count; end
  def followers_count; followers.count; end

  # バリデーション
  validates :name, presence: true
  validates :sub_name, presence: true
end
