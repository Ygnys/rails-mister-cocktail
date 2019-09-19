class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

def create

end

def destroy
  end

  private

  def dose_params
    params.require(:description)
end
end
