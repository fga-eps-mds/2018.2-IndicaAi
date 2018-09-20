require 'rails_helper'

RSpec.describe LocalsController, type: :controller do
    it 'Test index - Should return all locals as JSON' do
        get :index, format: :JSON
        expect(response).to be_success
    end

    it 'Test Search Locals - Should return matching locals' do
        get :search_locals, format: :JSON
        expect(response).to be_success
    end
end
