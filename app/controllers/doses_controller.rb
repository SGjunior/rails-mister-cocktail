class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@dose.cocktail_id)
    else
      render 'cocktails/show'
      # redirect_to cocktail_path(@dose.cocktail_id)
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.delete

    # @member = Member.find(params[:id])
    # @member.destroy
    # respond_to do |format|
      # format.html{ redirect_to cocktails_path}
      # format.xml { head :ok}
    # end

    # redirect_to cocktail_path(@dose.cocktail_id)
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :cocktail_id, :description)
  end
end
