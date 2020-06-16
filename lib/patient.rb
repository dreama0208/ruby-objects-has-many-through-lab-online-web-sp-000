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

  def appointments
    Appointment.all {|appointment| appointment.patient == self}
  end

  def doctors
    self.appointments.collect {|appointment| appointment.doctor}
  end

end
