class Patient
  attr_accessor :name 
  
  @@all = []
  
  def intialize(name)
    @name = name
  end
  
  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select{|app| app.patient == self}
  end
  
  def doctors()
    appointments.map{|app| app.doctor}
  end
end