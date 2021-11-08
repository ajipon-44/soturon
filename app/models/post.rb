# == Schema Information
#
# Table name: posts
#
#  id              :integer          not null, primary key
#  body            :text
#  date            :date
#  good            :integer
#  image           :text
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


  # バリデーション
  validates :body, presence: true
  validates :date, presence: true
  validates :virtual_user_id, presence: true
end
