# language: es

# Considerando el sistema bancario en Chile, la funcionalidad Aumento de Cupo de tu tarjeta de crédito. Para este caso, favor incluir la data de prueba que utilizarás. Priorizar pruebas de casos críticos.

Característica: Aumento de cupo de tarjeta de crédito
  Como cliente del banco 
  Quiero aumentar el cupo de mi tarjeta de crédito

Antecedentes: El usuario esta en la página del banco
  Dado que el usuario está en la página de inicio del banco

@high
Escenario: Usuario con una tarjeta de crédito solicita aumento de cupo y cumple con los antecedentes comerciales
  Cuando el usuario ingresa su rut '11111111-1'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y va a la sección de tarjetas
  Y hace clic en solicitud  de aumento de cupo para tarjeta '1111 1111 1111 1111'
  Y selecciona el cupo más alto dentro del rango disponible
  Y hace clic en botón aceptar
  Entonces el sistema debe mostrar el nuevo cupo de la tarjeta '1111 1111 1111 111' en la sección de tarjetas de crédito

@high
Escenario: Usuario con una tarjeta de crédito solicita aumento de cupo pero no cumple con los antecedentes comerciales
  Cuando el usuario ingresa su rut '22222222-2'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y va a la sección de tarjetas
  Y hace clic en solicitud  de aumento de cupo para tarjeta '2222 2222 2222 2222'
  Entonces el sistema muestra un mensaje indicando que debe actualizar sus antecentes comerciales para acceder a un nuevo cupo

@medium
Escenario: Usuario con más de una tarjeta de crédito solicita aumento de cupo y cumple con los antecedentes comerciales
  Cuando el usuario ingresa su rut '33333333-3'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y va a la sección de tarjetas
  Y hace clic en solicitud  de aumento de cupo para tarjeta '3333 3333 3333 3333'
  Y selecciona el cupo más alto dentro del rango disponible
  Y hace clic en aceptar nuevo cupo
  Entonces el sistema debe mostrar el cupo nuevo para la tarjeta '3333 3333 3333 3333' en la sección de tarjetas de crédito
  Y y debe mostrar el cupo antiguo para tarjeta '3333 1111 3333 1111'

@medium
Escenario: Usuario acepta aumento de cupo aprobado para su tarjeta de crédito
  Cuando el usuario ingresa su rut '44444444-4'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y aparece pop-up indicando que puede aumentar el cupo de la tarjeta '4444 4444 4444 4444'
  Y el usuario acepta el nuevo cupo
  Entonces el sistema debe mostrar el nuevo cupo de la tarjeta '4444 4444 4444 4444' en la sección de tarjetas de crédito

@medium
Escenario: Usuario rechaza aumento de cupo aprobado para su tarjeta de crédito
  Cuando el usuario ingresa su rut '44444444-4'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y aparece pop-up indicando que puede aumentar el cupo de la tarjeta '4444 4444 4444 4444'
  Y el usuario rechaza el nuevo cupo
  Entonces el sistema debe mostrar el cupo antiguo de la tarjeta '4444 4444 4444 4444' en la sección de tarjetas de crédito

@low
Escenario: Usuario con una tarjeta de crédito va a solicitar aumento de cupo pero decide cancelar
  Cuando el usuario ingresa su rut '11111111-1'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y va a la sección de tarjetas
  Y hace clic en solicitud de aumento de cupo para tarjeta '1111 1111 1111 1111'
  Y selecciona un nuevo cupo dentro del rango disponible
  Y hace clic en botón cancelar
  Entonces el sistema debe mostrar el cupo antiguo de la tarjeta '1111 1111 1111 111' en la sección de tarjetas de crédito

@low
Escenario: Usuario no tiene tarjeta de crédito
  Cuando el usuario ingresa su rut '55555555-5'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y hace clic en la opción solicitud de aumento de cupo de tarjeta de crédito
  Entonces la página del banco le indica que no tiene tarjeta de crédito

