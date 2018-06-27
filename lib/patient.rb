class Patient
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    appointment = Appointment.new(date, self, doctor)
    appointment
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    result = []
    appointments.each { |appointment| result << appointment.doctor }
    result
  end
end
