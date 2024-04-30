class DoctorsController < ApplicationController

    def show
        @patients = Patient.all
    end

    def graph
        @patients_count_by_day = group_patients_by_day(:Visited_at)
      end

    private

    def group_patients_by_day(field)
        patients = Patient.all
        patients_grouped_by_day = patients.group_by { |patient| patient.send(field).to_date }
        patients_count_by_day = {}
        patients_grouped_by_day.each do |date, patients|
          patients_count_by_day[date] = patients.size
        end
        patients_count_by_day
      end
end
