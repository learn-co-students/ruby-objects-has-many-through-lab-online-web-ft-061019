class Doctor
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end
    
    def new_appointment (appt_patient, appt_date)
        Appointment.new(appt_patient, self, appt_date)
    end

    def appointments
        Appointment.all.select do |appts|
            appts.doctor == self
        end
    end

    def patients 
        appointments.map(&:patient)
    end
    
    def self.all
        @@all
    end
end