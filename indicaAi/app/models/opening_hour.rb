# model of Opening Hours to Locals
class OpeningHour < ApplicationRecord
  belongs_to :local

  validates_presence_of :day, :opens, :closes, :local_id
  validates_numericality_of :day, less_than_or_equal_to: 7
  validates_numericality_of :day, greater_than_or_equal_to: 1
  validate :opens_before_closes

  # sample validation for better user feedback
  validates_uniqueness_of :opens, scope: %i[local_id day]
  validates_uniqueness_of :closes, scope: %i[local_id day]

  # validation format opens and close times (hh:mm)
  validates_format_of :opens, :closes, with: /\A\d{2}:\d{2}\z/

  protected

  # validation returns error if opens is greater than closes
  def opens_before_closes
    return unless opens && closes && opens >= closes
    errors.add(:closes, I18n.t('errors.opens_before_closes'))
  end
end
