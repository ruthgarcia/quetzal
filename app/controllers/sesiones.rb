Resumenes::App.controllers :sesiones do
  
  get :iniciar_sesion, :map => '/iniciar_sesion' do
    @alumno = Alumno.new
    render 'sesiones/nueva'
  end

  post :crear do
    email = params[:alumno][:email]
    contrasena = params[:alumno][:contrasena]
    @alumno = Alumno.autenticar(email, contrasena)
    if (@alumno.nil?)
      @alumno = Alumno.new
      flash.now[:error] = 'Datos no validos'
      render 'sesiones/nueva'
    else
      iniciar_sesion @alumno
      redirect '/'          
    end
  end

  get :cerrar_sesion, :map => '/cerrar_sesion' do 
    cerrar_sesion
    redirect '/'          
  end

end
