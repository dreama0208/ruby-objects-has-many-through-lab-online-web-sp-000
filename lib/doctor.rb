class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    doctor = self
    Appointment.new(date, patient, doctor)
  end

end
