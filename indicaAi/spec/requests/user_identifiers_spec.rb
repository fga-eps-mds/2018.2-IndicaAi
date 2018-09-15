# spec/requests/todos_spec.rb
require 'rails_helper'

RSpec.describe 'Local API', type: :request do
  let!(:user_identifiers) { create_list(:user_identifier, 10) }
  let(:user_identifier_id) { user_identifiers.first.id }

  # Test list all users
  describe 'GET /users' do
    # make HTTP get request before each example
    before { get '/users/' }

    it 'returns users' do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end
end