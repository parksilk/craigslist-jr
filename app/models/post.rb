class Post < ActiveRecord::Base
  belongs_to :category

  before_create :make_key

  def make_key
    self.access_key = SecureRandom.hex
  end
end
