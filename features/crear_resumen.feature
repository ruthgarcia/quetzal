Feature: Resumen Texto
  In order de cumplir con la tarea
  As a alumno
  I want publicar mi resumen

  
  Scenario: Crear Resumen Texto
    Given Que acceda a la pagina de Crear resumen
    When Yo lleno la fecha con "2013-11-06"
	  And lleno Numero de clase con "20"
	  And lleno Ausentes con "Juanito, Luisito"
	  And lleno la Descripcion con "En la clase se hablo de ..."
    And confirmo el nuevo resumen con el boton crear  
   
   Scenario: Lista de resumenes
    Given que estoy en la pagina de lista de resumenes
    Then ver las columnas de los resumenes