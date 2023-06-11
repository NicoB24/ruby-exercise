require 'rails_helper'

RSpec.describe ExceptionHandler, type: :controller do
  controller(ApplicationController) do
    include ExceptionHandler

    def index
      raise ActiveRecord::RecordNotFound
    end
  end

  describe "rescue_from ActiveRecord::RecordNotFound" do
    it "redirects to the error page" do
      get :index
      expect(response).to redirect_to(error_path)
    end

    it "displays the error message" do
      get :index
      expect(flash[:error]).to eq("ActiveRecord::RecordNotFound")
    end
  end
end
