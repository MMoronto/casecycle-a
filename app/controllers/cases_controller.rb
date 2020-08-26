class CasesController < ApplicationController
  def index
    @cases = Case.all
  end

  def create
    case = Case.create(case_params)
    redirect_to case_path(case)
  end

  def new

  end

  def show

  end

  def edit

  end

  def update

  end
end
