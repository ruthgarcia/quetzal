class Alumno 
  include DataMapper::Resource

  attr_accessor :email
  attr_accessor :nombre

  property :id, Serial
  property :nombre, String
  property :apellido, String
  property :contrasena_encriptada, String
  property :email, String
<<<<<<< HEAD
  has n, :resumens
=======
  #has n, :resumens

>>>>>>> 9e0688774e5a935871f0ca6db929f601d15d9460

  validates_presence_of :nombre
  validates_presence_of :apellido
  validates_presence_of :contrasena_encriptada
  validates_presence_of :email
  validates_format_of   :email,    :with => :email_address
  validates_with_method :es_contrasena_segura?

  def es_contrasena_segura?
    true
  end

  def contrasena= (contrasena)
    if contrasena[/[[:lower:]]/] and contrasena[/[[:upper:]]/] and
       contrasena[/\d/] and (contrasena.length >= 8)
      self.contrasena_encriptada = ::BCrypt::Password.create(contrasena)
    end
  end

  def self.autenticar(email, contrasena)
    alumno = Alumno.find_by_email(email)
    return nil if alumno.nil?
    alumno.tiene_contrasena?(contrasena)? alumno : nil
  end

  def tiene_contrasena?(contrasena)
    ::BCrypt::Password.new(contrasena_encriptada) == contrasena
  end

end
