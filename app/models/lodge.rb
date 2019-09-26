class Lodge < ApplicationRecord
  has_many :archons, dependent: :destroy
  has_many :battles, dependent: :destroy
end
