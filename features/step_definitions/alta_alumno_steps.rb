Given(/^Que acceda a la pagina de Alta Alumno$/) do
  visit '/alta_alumno'
end

When(/^Yo lleno Nombre con "(.*?)"$/) do |nombre_almn|
  fill_in('alumno[email]', :with => nombre_almn)
end

When(/^lleno Apellido con "(.*?)"$/) do |apellido_almn|
  fill_in('alumno[email]', :with => apellido_almn)
end

When(/^lleno Email con "(.*?)"$/) do |email_almn|
  fill_in('alumno[email]', :with => email_almn)
end

When(/^lleno Confirmar Email con "(.*?)"$/) do |email_almn|
  fill_in('alumno[email]', :with => email_almn)
end

When(/^lleno Contrasena con "(.*?)"$/) do |contrasena_almn|
  fill_in('alumno[email]', :with => contrasena_almn)
end

When(/^lleno Confirmar Contrasena con "(.*?)"$/) do |contrasena_almn|
  fill_in('alumno[email]', :with => contrasena_almn)
end

When(/^confirmo la nueva Alta de Alumno con el boton crear$/) do
  click_button('Crear')
end

Then(/^Yo deberia ver "(.*?)"$/) do |arg1|
  visit '/'
  page.should have_content(arg1)
end

