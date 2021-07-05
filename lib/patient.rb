class Patient 
    attr_accessor :name
    @@all = [ ]

    def initialize(name)
        self.name = name 
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end 
    
    def appointments
        Appointment.all.select {|appt| appt.patient == self }
    end 

    def doctors 
        appointments.map {|appt| appt.doctor}
    end 


end 