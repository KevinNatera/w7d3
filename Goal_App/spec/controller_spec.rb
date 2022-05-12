require 'rails_helper'

RSpec.describe UsersController, type: :controller do

    describe 'GET #show' do 
        let!(:user) { FactoryBot.create(:user) }

        it 'renders the show template' do 
            get :show, params: { id: user.id }
        end
    end


end