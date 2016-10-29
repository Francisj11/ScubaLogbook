class Dive < ActiveRecord::Base

  validate :date_must_be_in_the_past

  def date_must_be_in_the_past
    if date.present? && date > Date.today
      errors.add(:date, "must be in the past")
    end
  end

validates :image_URL, allow_blank: true, format: {
  with: %r{\.(gif|jpg|png)\Z}i,
  message: 'must be a URL for GIF, JPG or PNG image.'
}

validates :rating, numericality: {
    greater_than_or_equal_to: 0, less_than_or_equal_to: 5
  }

validates :depth, numericality: {greater_than_or_equal_to: 0  }
validates :title, presence: true
end


