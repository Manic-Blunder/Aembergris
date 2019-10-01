class Archon < ApplicationRecord
  belongs_to :lodge
  has_and_belongs_to_many :houses

  def as_json(options = {})
    super(except: %i[created_at updated_at], include: :houses)
  end
end
