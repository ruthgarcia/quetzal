require 'spec_helper'

describe Alumno do

	describe 'model' do

		subject { @alumno = Alumno.new }

		it { should respond_to( :id) }
		it { should respond_to( :nombre ) }
		it { should respond_to( :apellido ) }
		it { should respond_to( :contrasena_encriptada) }
		it { should respond_to( :email ) }

	end

	describe 'valid?' do

	  let(:alumno) { Alumno.new }

	  it 'Deberia ser false cuando el nombre esta en blanco' do
		alumno.apellido = 'Lopez'
	  	alumno.email = 'jlpz@unq.com'
	  	alumno.contrasena = 'a_secure_passWord!'
	  	alumno.valid?.should be_false
	  end

	 it 'Deberia ser false cuando el apellido esta en blanco' do
		alumno.nombre = 'Juan'
	  	alumno.email = 'jlpz@unq.com'
	  	alumno.contrasena = 'a_secure_passWord!'
	  	alumno.valid?.should be_false
	  end


	  it 'Deberia ser false cuando el email no es valido' do
	  	alumno.nombre = 'Juan'
	  	alumno.email = 'jlpz@unq.com'
	  	alumno.contrasena = 'a_secure_passWord!'
	  	alumno.valid?.should be_false
	  end

	  it 'Deberia ser false cuando la contrasena esta en blanco' do
	  	alumno.nombre = 'Juan'
		alumno.apellido = 'Lopez'
	  	alumno.email = 'jlpz@unq.com'
	  	alumno.valid?.should be_false
	  end

	  it 'Deberia ser false cuando la contrasena no contiene un caracter en minuscula' do
	  	alumno.nombre = 'Juan'
		alumno.apellido = 'Lopez'
	  	alumno.email = 'jlpz@unq.com'
	  	alumno.contrasena = 'ABCDEFGH'
	  	alumno.valid?.should be_false
	  end

	  it 'Deberia ser false cuando la contrasena no contiene un caracter en mayuscula' do
	  	alumno.nombre = 'Juan'
		alumno.apellido = 'Lopez'
	  	alumno.email = 'jlpz@unq.com'
	  	alumno.contrasena = 'abcdefgh'
	  	alumno.valid?.should be_false
	  end

	  it 'Deberia ser false cuando la contrasena no contiene un digito' do
	  	alumno.nombre = 'Juan'
		alumno.apellido = 'Lopez'
	  	alumno.email = 'jlpz@unq.com'
	  	alumno.contrasena = 'SinDigitos'
	  	alumno.valid?.should be_false
	  end

	  it 'Deberia ser false cuando la contrasena es < 8' do
	  	alumno.nombre = 'Juan'
		alumno.apellido = 'Lopez'
	  	alumno.email = 'jlpz@unq.com'
	  	alumno.contrasena = 'Peq0'
	  	alumno.valid?.should be_false
	  end

	  it 'Deberia ser true cuando todos los campos son validos' do
	  	alumno.nombre = 'Juan'
		alumno.apellido = 'Lopez'
	  	alumno.email = 'jlpz@unq.com'
	  	alumno.contrasena = 'V4l1dP4ssw0rd'
	  	alumno.valid?.should be_true
	  end

	end

	describe 'autenticacion' do

		before do
			@contrasena = 'V4l1dP4ssw0rd'
		 	@alumno = Alumno.new
		 	@alumno.email = 'jlpz@unq.com'
		 	@alumno.contrasena = @contrasena
		end

		it 'Deberia retornar nil cuando la contrasena no coincide' do
			email = @alumno.email
			contrasena = 'contrasena_incorrecta'
			Alumno.should_receive(:find_by_email).with(email).and_return(@alumno)
			Alumno.autenticar(email, contrasena).should be_nil
		end

		it 'Deberia retornar nil cuando el email no coincide' do
			email = 'wrong@email.com'
			Alumno.should_receive(:find_by_email).with(email).and_return(nil)
			Alumno.autenticar(email, @contrasena).should be_nil
		end

		it 'Deberia retornar el alumno cuando el email y contrasena coinciden' do
			email = @alumno.email
			Alumno.should_receive(:find_by_email).with(email).and_return(@alumno)
			Alumno.autenticar(email, @contrasena).should eq @alumno
		end

	end

end
