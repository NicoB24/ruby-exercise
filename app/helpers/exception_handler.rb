module ExceptionHandler
  extend ActiveSupport::Concern

  included do
    rescue_from ActiveRecord::RecordNotFound, with: :display_error

    def display_error(exception)
      flash[:error] = exception.message
      redirect_to error_path
    end
  end
end
