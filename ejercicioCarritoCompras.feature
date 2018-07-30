# language: es

# Considerando una página web de algún Retail, que casos definirías para un proceso de compras a través del carrito desde la selección del producto hasta el proceso de pago. No considerar proceso de entregas/delivery. Para este caso, favor incluir la data de prueba que utilizarás. Priorizar pruebas de casos críticos.

Característica: Compra de productos en sitio web
  Como cliente de la tienda
  Quiero comprar un producto que seleccione usando el carrito de compras

Antecedentes: El cliente está en la página de la tienda
  Dado que el cliente esta en la página de inicio de la tienda

@high
Escenario: Cliente selecciona un producto y hace clic en el botón Agregar al carrito
  Cuando el cliente ingresa su rut '11111111-1'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y busca el producto 'mesa'
  Y selecciona el primer producto disponible
  Y hace clic en botón Agregar al carrito
  Y hace clic en ir al carrito
  Y hace clic en Pagar
  Y selecciona la tarjeta de la tienda como método de pago
  Y ingresa los siguientes datos de la tarjeta
  |Nro tarjeta        |RUT       |Mes Vencimiento|Año Vencimiento|Codigo Verificacion|PIN |
  |1111 1111 1111 1111|11111111-1|01             |2020           |111                |1111|
  Y hace clic en Pagar
  Entonces el sistema indica al cliente que el producto fue comprado exitosamente

@high
Escenario: Cliente selecciona un producto y hace clic en el botón Comprar
  Cuando el cliente ingresa su rut '11111111-1'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y busca el producto 'mesa'
  Y selecciona el primer producto disponible
  Y hace clic en botón Comprar
  Y hace clic en Pagar
  Y selecciona la tarjeta de la tienda como método de pago
  Y ingresa los siguientes datos de la tarjeta
  |Nro tarjeta        |RUT       |Mes Vencimiento|Año Vencimiento|Codigo Verificacion|PIN |
  |1111 1111 1111 1111|11111111-1|01             |2020           |111                |1111|
  Y hace clic en Pagar
  Entonces el sistema indica al cliente que el producto fue comprado exitosamente

@medium
Escenario: Cliente selecciona un producto sin haber iniciado sesión
  Cuando el cliente busca el producto 'mesa'
  Y selecciona el primer producto disponible
  Y hace clic en botón para agregar al carrito
  Y hace clic en ir al carrito
  Y hace clic en Pagar
  Entonces el sistema muestra una página para iniciar sesión o registrarse

@medium
Escenario: Cliente agrega un producto al carrito y luego lo elimina
  Cuando el cliente ingresa su rut '11111111-1'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y busca el producto 'mesa'
  Y selecciona el primer producto disponible
  Y hace clic en botón para agregar al carrito
  Y hace clic en ir al carrito
  Y hace clic en eliminar el producto
  Entonces el sistema borra el producto del carrito

@medium
Escenario: Cliente selecciona un producto y modifica la cantidad en la página del producto
  Cuando el cliente ingresa su rut '11111111-1'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y busca el producto 'mesa'
  Y selecciona el primer producto disponible
  Y selecciona la cantidad '4'
  Y hace clic en botón Agregar al carrito
  Y hace clic en ir al carrito
  Entonces el sistema muestra la cantidad correcta con subtotal correcto

@medium
Escenario: Cliente selecciona un producto y modifica la cantidad en el carrito de compras
  Cuando el cliente ingresa su rut '11111111-1'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y busca el producto 'mesa'
  Y selecciona el primer producto disponible
  Y hace clic en botón Agregar al carrito
  Y hace clic en ir al carrito
  Y modifica la cantidad de producto a '5'
  Y hace clic en botón Actualizar
  Entonces el sistema actualiza al monto subtotal correcto

@low
Escenario: Cliente agrega un producto al carro de compras pero cancela la transacción al pagar
  Cuando el cliente ingresa su rut '11111111-1'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y busca el producto 'mesa'
  Y selecciona el primer producto disponible
  Y hace clic en botón Agregar al carrito
  Y hace clic en ir al carrito
  Y hace clic en Pagar
  Y selecciona la tarjeta de la tienda como método de pago
  Y hace clic en Anular compra
  Entonces el sistema regresa a la página anterior sin haber realizado el pago

@low
Escenario: El carrito de compras está vacío
  Cuando el cliente ingresa su rut '11111111-1'
  Y ingresa su contraseña 'Testing1234'
  Y hace clic en el botón para iniciar sesión
  Y hace clic en ir al carrito
  Entonces el sistema muestra mensaje 'Tu carrito de compra está vacío'

