class Resumen 
  include DataMapper::Resource

  property :id, Serial
  property :fecha, String
  property :num_clase, String
  property :ausentes, String
  property :descripcion, String
<<<<<<< HEAD
  belongs_to :alumno
=======
  #belongs_to :alumno

>>>>>>> 9e0688774e5a935871f0ca6db929f601d15d9460

  validates_presence_of :fecha
  validates_presence_of :num_clase
  validates_presence_of :ausentes
  validates_presence_of :descripcion
  
  def owner
    alumno
  end

  def owner=(un_alumno)
    self.alumno = un_alumno
  end

  def self.find_by_owner(alumno)
    Resumen.all(:alumno => alumno)
  end

  def enviar_email(resumen)
        alumnos = Alumno.all
        alumnos.each do | alumno |
          Resumenes::App.deliver(:notificacion, :info_email, resumen, alumno)
        end
  end
  
end
