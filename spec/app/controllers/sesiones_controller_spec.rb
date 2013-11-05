require 'spec_helper'

describe "SesionesController" do

	describe 'get :' do
		
	  it "should response ok" do
	  	Resumenes::App.any_instance.should_receive(:render).with('sesiones/nueva')
	  	get '/iniciar_sesion'
	    last_response.should be_ok
	  end

	  it 'should render alumnos/iniciar_sesion' do
	  	Resumenes::App.any_instance.should_receive(:render).with('sesiones/nueva')
	  	get '/iniciar_sesion'
	  end

  end
end
