class BadgesController < ApplicationController

  before_filter :find_badge, only: [:show, :claim]

  def index
    @badges = Badge.all
  end

  def show
  end

  def claim
    earner = Earner.find_by_email!(params[:email])
    assertion = @badge.assertions.find_by_badge_id!(earner.id)
    render json: assertion_url(assertion)
  end

  protected

  def find_badge
    @badge = Badge.find(params[:id])
  end
end
