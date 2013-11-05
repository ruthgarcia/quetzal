Resumenes::App.controllers :inicio do
  
  get :index, :map => '/' do
    render 'inicio/index'
  end
  
end
