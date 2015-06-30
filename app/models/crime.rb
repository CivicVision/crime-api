class Crime < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :community
  belongs_to :district

  TYPES = [ "THEFT", "SEX CRIMES" "DRUGS/ALCOHOL VIOLATIONS" ]

  TYPES.each do |type|
    scope type.parameterize.underscore.to_sym, -> { where(crime_type: type) }
  end

  scope :dow_hod, -> { group(:dow, :hour).select("count(*) as count, dow, hour") }

end
