require 'rails_helper'

RSpec.describe LocalsController, type: :controller do
    
    let!(:local) { create(:local) }


    it { should route(:get, '/locals').to(action: :index) }
    let(:action)  { LocalsController.new }

    it 'Test index - Should return all locals as JSON' do  
        get :index, format: :JSON
        expect(response).to be_success
    end


    describe 'GET #search_locals' do
        context 'Return a local by its name as a param' do
            it { should route(:get, '/locals/name/Padaria').to(action: :search_locals, name: 'Padaria') }
        end
    end
    describe 'GET #show_rating' do
        context 'Return a rating by its id as a param ' do
            it { should route(:get, '/locals/name/Padaria').to(action: :search_locals, name: 'Padaria') }
        end
    end
end
