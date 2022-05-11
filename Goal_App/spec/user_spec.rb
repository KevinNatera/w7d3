require 'rails_helper'

RSpec.describe User, type: :model do

    describe 'validations' do 
        it { should validate_presence_of(:email) }
        it { should validate_presence_of(:password_digest) }
        it { should validate_length_of(:password).is_at_least(6) }
    
        it { should validate_uniqueness_of(:email) }
            subject(:random) {User.create(
                email: 'random@gmail.com',
                password: 'password'
            )
        }
    end

    describe 'find_by_credentials' do 
        let!(:user) { FactoryBot.create(:user)}

        context 'with the right credentials' do
            it 'should return the user' do 
                expect(User.find_by_credentials(user.email, user.password)).to eq(user)
            end
        end
    end





end