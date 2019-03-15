class Api::V1::PatientsController < ApplicationController

  before_action :set_patient, only: [:show, :update, :destroy]

  # GET /patients
  def index
   @patients = Patient.all
   respond @patients, 0, "Request completed.", :ok
  end

  # GET /patients/1
  def show
   respond @patient, 0, "Request completed.", :ok
  end

  # POST /patients
  def create
   @patient = Patient.new( patient_params )
   if @patient.save
     respond( { patient: @patient, status: :created, location: api_v1_patient_url(@patient) }, 0, "Patient Created.", :created )
   else
     respond( { patient_errors: @patient.errors, status: :unprocessable_entity }, 1, "Patient not Created.", :unprocessable_entity )
   end
  end

  # PATCH/PUT /patients/1
  def update
   if @patient.update(article_params)
     respond @patient, 0, "Update completed.", :ok
   else
    respond( { patient_errors: @patient.errors, status: :unprocessable_entity }, 1, "Patient not Updated.", :unprocessable_entity )
   end
  end

  #DELETE
  def destroy
      @p = @patient.destroy
      if @p.destoyed?
        respond @p, 0, "Record deleted.", :ok
      else
        respond( { patient_errors: @patient.errors, status: :unprocessable_entity }, 1, "Patient record not deleted.", :unprocessable_entity )
      end
  end

  private

  def respond obj, code, msg, stat=:not_found
    render json: { code: code, message: msg, result: obj, url: request.url, is_error: ( code > 0 ) }, status: stat
  end

  def api_v1_patient_url p
    return "/api/v1/patients/#{ p.id }"
  end

  def set_patient
    begin
      @patient = Patient.find( params[:id] )
    rescue => e
      respond e, 1, "Request not completed."
    end
  end

  # Only allow a trusted parameter “white list” through.
  def patient_params
    params.require(:patient).permit(:first_name, :middle_name, :last_name, :honorific, :dob, :gender, :facility_id, :admission_id )
  end

end
