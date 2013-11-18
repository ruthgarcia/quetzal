class Notificaciones

	attr_accessor :alumno_email
	attr_accessor :resumen

	def self.creado_por(email, resumen)
		app = Notificaciones.new
		app.alumno_email = email
		app.resumen = resumen
		app
	end

	def process
	    Resumenes::App.deliver(:notificacion, :info_email, self)
	end

end
