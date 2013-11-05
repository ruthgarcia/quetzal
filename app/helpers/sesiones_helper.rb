Resumenes::App.helpers do
	
	def alumno_actual=(alumno)
		@alumno_actual = alumno 
	end

	def alumno_actual
		@alumno_actual ||= Alumno.find_by_id(session[:alumno_actual])
	end
	
	def iniciar_sesion(alumno)
		session[:alumno_actual] = alumno.id 
		self.alumno_actual = alumno
	end

	def cerrar_sesion
		session.delete(:alumno_actual)
	end

	def iniciar_sesion?
		!alumno_actual.nil?
	end

end
