class Patient
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select{|app| app.patient == self}
  end
  
  def doctors()
    appointments.map do |app|
      app.patient
    end
  end
end