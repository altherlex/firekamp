class Book < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["description", "id", "releaseDate", "title"]
  end
end