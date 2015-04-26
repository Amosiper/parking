class User < ActiveRecord::Base

  has_many :parks, dependent: :destroy
  has_many :orders, dependent: :destroy
  has_many :news, dependent: :destroy
  has_many :opinions, dependent: :destroy

end
