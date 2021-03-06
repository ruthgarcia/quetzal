require 'spec_helper'

describe "ResumenesController" do

	describe 'get :crear_resumen' do
		
	  it "deberia responder ok" do
	  	Resumenes::App.any_instance.should_receive(:render).with('resumenes/nuevo')
	  	get '/crear_resumen'
	    last_response.should be_ok
	  end

	  it 'debe enviar resumenes/nuevo' do
	  	Resumenes::App.any_instance.should_receive(:render).with('resumenes/nuevo')
	  	get '/crear_resumen'
	  end

	 end 

        describe 'get :ver_resumen' do
		
	  it 'debe enviar resumenes/lista' do
	  	Resumenes::App.any_instance.should_receive(:render).with('resumenes/ver')
	  	get '/resumenes/ver'
	  end

	 end 
end
