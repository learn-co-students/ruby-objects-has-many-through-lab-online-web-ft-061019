class Doctor
   attr_accessor :name

   @@all = []
   def initialize(name)
      self.name = name
      self.class.all << self
   end

   def self.all
      @@all
   end

   def new_appointment(patient_obj, date)
      new_appt = Appointment.new(date, patient_obj, self)
   end
   
   def appointments
      Appointment.all.select {|appt| appt.doctor == self}
   end
   
   def patients
      appointments.map {|appt| appt.patient}
   end

end