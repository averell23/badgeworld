class ActivationsController < ApplicationController

  before_filter :get_assertion

  def new
  end

  def create
    if @assertion.activate!(params[:email], params[:name])
      render json: [ assertion_url(@assertion) ]
    else
      render json: [ "fail" ]
    end
  end

  private

  def get_assertion
    @assertion = Assertion.find_by_activation_code(params[:activation_code])
    if(@assertion.blank?)
      flash[:alert] = "Could not find a badge assertion for #{params[:activation_code]}"
      redirect_to :back unless @assertion && !@assertion.activated?
    end
  end

end