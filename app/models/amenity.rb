class Amenity < ApplicationRecord
  before_validation :set_default_padding
  before_save :set_max_buildable
  
  validates :name, presence: true
  validates :padding, presence: true
  validate :must_have_area_or_dimensions

  private

  def set_default_padding
    self.padding ||= 10
  end

  def must_have_area_or_dimensions
    unless area.present? || (length.present? && width.present?)
      errors.add(:base, "Must provide either area or both length and width")
    end
  end

  def calc_max_buildable
    return nil unless area || width && length

    base_area = area || (width * length)
    adjusted_area = base_area * (1 + (padding.to_f / 100))

    golf_course = Amenity.find_by(name: "Golf Course")
    return nil unless golf_course&.area

    (golf_course.area / adjusted_area).floor
  end

  def set_max_buildable
    self.max_buildable = calc_max_buildable
  end
end
