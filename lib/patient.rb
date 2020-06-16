class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    patient = self
    Appointment.new(date, patient, doctor)
  end
end
