Feature: Inicio de Sesion
  In order de ingresar al sistema
  As a Alumno
  I want ingresar con email y contrasena

  Background:
	Given que estoy dado de alta como Alumno
  
  Scenario: Inicio de Sesion
    When navego en la pagina de inicio de sesion
    Then deberia ver "campos de email y contrasena"
    When lleno email con "luisito@gmail.com" 
    And lleno contrasena con "Passw0rd!"
    And confirmo el inicio de sesion con el boton iniciar    
    Then deberia conseguir ingresar al sistema

  Scenario: Inicio de Sesion incorrecto por email o contrasena
    When navego en la pagina de inicio de sesion
    Then deberia ver "campos de email y contrasena"
    When lleno email incorrecto con "luis@gmail.com" 
    And lleno contrasena con "Passw0rd!"
    And confirmo el inicio de sesion con el boton iniciar    
    Then no deberia conseguir ingresar al sistema
    Then deberia ver "Datos incorrectos"
