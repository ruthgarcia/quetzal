require 'spec_helper'

describe "AlumnosController" do

	describe 'get :alta_alumno' do
		
	  it "deberia responder ok" do
	  	Resumenes::App.any_instance.should_receive(:render).with('alumnos/nuevo')
	  	get '/alta_alumno'
	    last_response.should be_ok
	  end

	  it 'deberia enviar a alumnos/nuevo' do
	  	Resumenes::App.any_instance.should_receive(:render).with('alumnos/nuevo')
	  	get '/alta_alumno'
	  end

	 end 
end
