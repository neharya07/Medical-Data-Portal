class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to @patient, notice: 'Patient was successfully created.'
    else
      redirect_to @patient, notice: 'No Data created.'
    end
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update(patient_params)
      redirect_to patients_path, notice: 'Patient was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @patient.destroy
    redirect_to patients_url, notice: 'Patient was successfully destroyed.'
  end

  private
    def patient_params
      params.require(:patient).permit(:Name, :Age, :Gender, :Contact, :Visited_at)
    end
end
