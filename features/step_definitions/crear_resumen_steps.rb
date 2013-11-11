Given(/^Que acceda a la pagina de Crear resumen$/) do
  visit '/crear_resumen'
end

When(/^Yo lleno la fecha con "(.*?)"$/) do |fecha|
  fill_in('resumen[fecha]', :with => fecha)
end

When(/^lleno Numero de clase con "(.*?)"$/) do |num_clase|
  fill_in('resumen[num_clase]', :with => num_clase)
end

When(/^lleno Ausentes con "(.*?)"$/) do |ausentes|
  fill_in('resumen[ausentes]', :with => ausentes)
end

When(/^lleno la Descripcion con "(.*?)"$/) do |descripcion|
  fill_in('resumen[descripcion]', :with => descripcion)
end

When(/^confirmo el nuevo resumen con el boton crear$/) do
   click_button('Crear')
end


