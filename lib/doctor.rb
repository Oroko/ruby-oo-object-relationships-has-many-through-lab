# frozen_string_literal: true

class Doctor
  @@all = []

  attr_accessor :patient, :appointment, :name
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients 
    appointments.map do |appointment|
      appointment.patient
    end
  end
end
