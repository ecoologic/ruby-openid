require 'rails_helper'

RSpec.describe ApplicationController do
  describe 'GET /dashboard' do
    it "works" do
      get :dashboard

      expect(response).to be_success
    end
  end
end
