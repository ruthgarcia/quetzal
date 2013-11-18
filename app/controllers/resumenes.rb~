Resumenes::App.controllers :resumenes do


  get :index do
    @resumenes = Resumen.all
    render '/'
  end

  
  get :latest do
    @resumenes = Resumen.all
    render 'resumenes/lista'
  end

  get :nuevo, :map => '/crear_resumen' do
    @resumen = Resumen.new
    render 'resumenes/nuevo'
  end

 get :ver do
    @resumen = Resumen.all
    render 'resumenes/ver'
  end



  post :crear do
      @alumno = Alumno.all
      @resumen = Alumno.new(params[:alumno])
    #  @resumen.alumno = Alumno.get(params[:email])

      fecha = params[:resumen][:fecha]
      num_clase = params[:resumen][:num_clase]
      ausentes = params[:resumen][:ausentes]
      descripcion = params[:resumen][:descripcion]
      
      
     if ((fecha == params[:resumen][:fecha]) && (num_clase == params[:resumen][:num_clase]) && (ausentes == params[:resumen][:ausentes]) && (descripcion == params[:resumen][:descripcion]))
        @resumen = Resumen.new(params[:resumen])
        if @resumen.save
         # alumno_email = Alumno.get(params[:email])
           alumno_email = 'correo'
	  @notificaciones = Notificaciones.creado_por(alumno_email, @resumen)
	  @notificaciones.process
          flash[:success] = 'Creacion de Resumen Exitoso y Mail enviado'
          redirect '/'
        else
          flash.now[:error] = 'Todos los campos son obligatorios'
          render 'resumenes/nuevo'
        end
               
      end
  end

end
