# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  body            :text
#  date            :date
#  good            :integer
#  image1          :string
#  image2          :string
#  image3          :string
#  image4          :string
#  quote_tweet     :integer
#  retweet         :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  virtual_user_id :integer
#
class Post < ApplicationRecord
  # 関連
  belongs_to :virtual_user
  has_many :goods
  has_many :replies, dependent: :destroy
  has_many :replyings, through: :replies, source: :replied
  has_many :passive_replies, class_name: 'Reply', foreign_key: 'replied_id', dependent: :destroy
  has_many :replieds, through: :passive_replies, source: :post


  # 委譲
  def goods_count; goods.count; end


  # バリデーション
  validates :body, presence: true
  validates :date, presence: true
  validates :virtual_user_id, presence: true
end
