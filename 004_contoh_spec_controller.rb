require 'rails_helper'

RSpec.describe User, type: :model do
   describe 'User contains name' do
     context 'values is blank' do
       let(:user){build :user, name: nil}
        
       it 'not valid' do
	 expect(user.name).to eq nil  
       end
     end

     context 'values contains number' do
	let(:user){build :user, name: "ziaul41"}
        it 'not valid' do
          expect(user.contains_number).to eq true
        end
     end
   end
   
   describe 'Maximum Length User name is 10' do
      context 'length <= 10' do
	let(:user){build :user, name: "Ziaul Haqi"}
        it 'return true' do  
	   expect(user.length_valid).to eq true
        end
      end
      context 'length > 10' do 
	let(:user){build :user, name: "Ziaul Haqiiiii"}
        it 'return false' do  
	   expect(user.length_valid).to eq false
        end
      end
   end
end
