class NotesController < ApplicationController

  def create
    @assignment = Assignment.find(params[:assignment_id])
    @note = @assignment.notes.create(note_params)
    redirect_to assignment_path(@assignment)
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @assignment = Assignment.find(params[:assignment_id])
    @note = @assignment.notes.find(params[:id])
    @note.destroy
    redirect_to assignment_path(@assignment)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit!
    end

end
