Resumenes::App.mailer :notificacion do

<<<<<<< HEAD
  email :info_email do | resumen, alumno |
    from 'no_reply@resumenes.com'
    to alumno.email
    subject 'Resumenes: Nuevo Resumen'
    locals :resumen => resumen
=======
  email :info_email do | notificaciones|
    from 'no_reply@unq.com'
    to notificaciones.alumno_email
    subject 'Notificacion Resumen: Informacion de Contacto'
    locals :resumen => notificaciones.resumen
>>>>>>> 9e0688774e5a935871f0ca6db929f601d15d9460
    content_type :plain
    render 'notificacion/info_email'
  end

end
