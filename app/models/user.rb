class User < ApplicationRecord
  has_many :products # Users have product purchases
end
