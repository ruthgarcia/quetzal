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
        @resumen = Resumen.new(params[:resumen])
        @resumen.owner = alumno_actual
        if @resumen.save
          flash[:success] = 'Creacion de Resumen Exitoso y Mail enviado'
          @resumen.enviar_email(@resumen)
          redirect '/'
        else
          flash.now[:error] = 'Todos los campos son obligatorios'
          render 'resumenes/nuevo'
        end
  end

end
