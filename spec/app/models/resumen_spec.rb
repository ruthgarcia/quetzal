require 'spec_helper'

describe Resumen do

	describe 'model' do

		subject { @resumen = Resumen.new }

		it { should respond_to( :id) }
		it { should respond_to( :fecha ) }
		it { should respond_to( :num_clase ) }
		it { should respond_to( :ausentes) }
		it { should respond_to( :descripcion ) }
		it { should respond_to( :owner ) }
		it { should respond_to( :owner= ) }		

	end

	describe 'valid?' do

	  let(:resumen) { Resumen.new }

	  it 'Deberia ser false cuando la fecha esta en blanco' do
		resumen.num_clase = '20'
	  	resumen.ausentes = 'Fulanito'
	  	resumen.descripcion = 'Buena clase!'
	  	resumen.valid?.should be_false
	  end

	 it 'Deberia ser false cuando numero de clase esta en blanco' do
		resumen.fecha = '2013-11-06'
	  	resumen.ausentes = 'Fulanito'
	  	resumen.descripcion = 'Buena clase!'
	  	resumen.valid?.should be_false
	  end

	it 'Deberia ser false cuando descripcion esta en blanco' do
		resumen.fecha = '2013-11-06'
		resumen.num_clase = '02'
	  	resumen.ausentes = 'Fulanito'
	  	resumen.valid?.should be_false
	  end

	end

end
