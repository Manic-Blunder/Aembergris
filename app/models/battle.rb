class Battle < ApplicationRecord
  belongs_to :lodge
  has_one :archon_one, :class_name => 'Archon'
  has_one :archon_two, :class_name =>  'Archon'
end
