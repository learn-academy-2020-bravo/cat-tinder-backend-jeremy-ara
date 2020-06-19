class Cat < ApplicationRecord
  validates :name, :age, :image_path, presence: true
  validates :enjoys, presence: true, length: { minimum: 10 }

end
