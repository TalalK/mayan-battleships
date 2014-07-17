require 'user_input'

describe UserInput do
	let(:user_input){UserInput.new}

	it 'should ask for a name' do
		expect(STDOUT).to receive(:puts).with("Please enter your name")
		allow(user_input).to receive(:gets).and_return("Charlotte")
		expect(user_input.get_name).to eq("Charlotte")
	end

	it 'should ask for a coordinate' do
		expect(STDOUT).to receive(:puts).with("Please enter a coordinate")
		allow(user_input).to receive(:gets).and_return("A1")
		expect(user_input.get_coordinate).to eq({[0],[0]})
	end 

	it 'should ask for a direction' do
		expect(STDOUT).to receive(:puts).with("Please select your ship's direction")
		allow(user_input).to receive(:gets).and_return("Vertical")
		expect(user_input.get_direction).to eq("Vertical")
	end



end
