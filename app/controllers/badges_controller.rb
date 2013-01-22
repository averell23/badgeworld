class BadgesController < ApplicationController

  before_filter :find_badge, only: [:show, :claim]

  def index
    @badges = Badge.all
  end

  def show
  end

  protected

  def find_badge
    @badge = Badge.find(params[:id])
  end
end
