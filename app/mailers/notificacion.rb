Resumenes::App.mailer :notificacion do

  email :info_email do | notificaciones|
    from 'no_reply@unq.com'
    to notificaciones.alumno_email
    subject 'Notificacion Resumen: Informacion de Contacto'
    locals :resumen => notificaciones.resumen
    content_type :plain
    render 'notificacion/info_email'
  end

end
