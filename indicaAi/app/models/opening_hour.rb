# model of Opening Hours to Locals
class OpeningHour < ApplicationRecord
  belongs_to :local

  validates_presence_of :day, :closes, :opens, :local_id
  validates_numericality_of :day, less_than_or_equal_to: 7
  validates_numericality_of :day, greater_than_or_equal_to: 1
  validate :opens_before_closes

  # sample validation for better user feedback
  validates_uniqueness_of :opens, scope: %i[local_id day]
  validates_uniqueness_of :closes, scope: %i[local_id day]

  protected

  def opens_before_closes
    return unless opens && closes && opens >= closes
    errors.add(:closes, I18n.t('errors.opens_before_closes'))
  end
end
