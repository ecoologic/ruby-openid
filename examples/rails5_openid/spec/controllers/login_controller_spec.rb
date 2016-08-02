require 'rails_helper'

RSpec.describe LoginController do
  describe 'GET index' do
    it "works" do
      get :index

      expect(response).to be_success
    end
  end
end
