Resumenes::App.mailer :notificacion do

  email :info_email do | resumen, alumno |
    from 'no_reply@resumenes.com'
    to alumno.email
    subject 'Resumenes: Nuevo Resumen'
    locals :resumen => resumen
    content_type :plain
    render 'notificacion/info_email'
  end

end
