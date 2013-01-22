require 'digest'

class AssertionsController < ApplicationController

  def show
    @assertion = Assertion.find(params[:id])
    if(@assertion.activated?)
      render json: assertion_hash(Assertion.find(params[:id]))
    else
      redirect_to new_assertion_activation_path(@assertion)
    end
  end

  protected

  def salt
    'badgeworld'
  end

  def assertion_hash(assertion)
    {
      "recipient" => hashed_mail(assertion.earner.email),
      "salt" => salt,
      "issued_on" => assertion.created_at.strftime("%Y-%m-%d"),
      "badge" => {
        "version" => "0.5.0",
        "name" => assertion.badge.name,
        "image" => assertion.badge.badge_image.url,
        "description" => assertion.badge.description,
        "criteria" => "/badges/html5-basic",
        "issuer" => {
          "origin" => root_url,
          "name" => "Furrycreatures Badge World",
          "org" => "Little furry creatures rule your world",
          "contact" => "badges@betterplace.org"
       }
      }
    }
  end

  def hashed_mail(email)
    'sha256$' + Digest::SHA256.hexdigest(email + salt)
  end

end
