class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|appt| appt.patient == self}
  end

  def doctors
    appointments.map {|appt| appt.doctor}
  end

  def self.all
    @@all
  end
end
