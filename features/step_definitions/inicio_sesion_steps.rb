When(/^navego en la pagina de inicio de sesion$/) do
  visit '/iniciar_sesion'
end

When(/^lleno email con "(.*?)"$/) do |email_almn|
  fill_in('alumno[email]', :with => email_almn)
end

When(/^lleno contrasena con "(.*?)"$/) do |contrasena_almn|
  fill_in('alumno[contrasena]', :with => contrasena_almn)
end

When(/^confirmo el inicio de sesion con el boton iniciar$/) do
  click_button('Iniciar')
end


