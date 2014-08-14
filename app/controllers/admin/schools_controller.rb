class Admin::SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update]

  # GET /schools/1
  def show
  end

  # GET /schools/1/edit
  def edit
  end

  # PATCH/PUT /schools/1
  def update
    respond_to do |format|
      if @school.update(school_params)
        format.html { redirect_to @school, notice: 'School was successfully updated.' }
        format.json { render :show, status: :ok, location: @school }
      else
        format.html { render :edit }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_params
      params.require(:school).permit(:name, :acronym)
    end
end
