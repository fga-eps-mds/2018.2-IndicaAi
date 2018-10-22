class OpeningHour < ApplicationRecord
  belongs_to :local

  validates_presence_of :day, :closes, :opens, :local_id
  validates_inclusion_of :day, :in => 1..7
  validate :opens_before_closes

  # sample validation for better user feedback
  validates_uniqueness_of :opens, scope: [:local_id, :day]
  validates_uniqueness_of :closes, scope: [:local_id, :day]

  protected
  def opens_before_closes
    errors.add(:closes, I18n.t('errors.opens_before_closes')) if opens && closes && opens >= closes
  end
end
