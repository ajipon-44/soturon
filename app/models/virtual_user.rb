class VirtualUser < ApplicationRecord
  validates :name, presence: true
  validates :sub_name, presence: true
end
