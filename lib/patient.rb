class Patient
    attr_accessor :name

    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def new_appointment (appt_doctor, appt_date)
        Appointment.new(self, appt_doctor, appt_date)
    end

    def appointments
        Appointment.all.select do |appts|
            appts.patient == self
        end
    end

    def doctors
        appointments.map(&:doctor)
    end

    def self.all 
        @@all
    end
end
