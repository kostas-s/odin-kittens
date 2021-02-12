class Kitten < ApplicationRecord

  def as_json(options = nil)
    super(only: [:name, :age, :cuteness, :softness])
  end
end
