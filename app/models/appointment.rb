class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def readable_date
    self.appointment_datetime.strftime("%B %-d, %Y at %H:%M")
  end
  #2016-01-11 20:20:00 UTC => January 11, 2016 at 20:20
end
