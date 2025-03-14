class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordInvalid, with: :render_invalid_record
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

  def render_invalid_record
    render("new")
  end
end
