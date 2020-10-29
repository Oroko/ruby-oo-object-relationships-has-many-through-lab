# frozen_string_literal: true

require 'pry'
class Patient
  @@all = []

  attr_accessor :doctor, :appointment, :patient
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
    # binding.pry
  end

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def doctors
    appointments.map(&:doctor)
  end
end
