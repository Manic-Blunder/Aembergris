class Archon < ApplicationRecord
  belongs_to :lodge
  has_and_belongs_to_many :houses
end
