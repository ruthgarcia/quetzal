Feature: Inicio de Sesion
  In order de ingresar al sistema
  As a Alumno
  I want ingresar con email y contrasena
  
  Scenario: Inicio de Sesion
    When navego en la pagina de inicio de sesion
    When lleno email con "luisito@gmail.com" 
    And lleno contrasena con "Passw0rd!"
    And confirmo el inicio de sesion con el boton iniciar


