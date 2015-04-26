class Park < ActiveRecord::Base
  belongs_to :user
  has_one :order
  has_many :comments, dependent: :destroy
end
