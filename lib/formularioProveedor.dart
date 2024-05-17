import 'package:flutter/material.dart';
import 'package:castaneda/drawer_menu.dart';

class Formulario3 extends StatefulWidget {
  static const String routeName = '/form3';

  @override
  _Formulario3State createState() => _Formulario3State();
}

class _Formulario3State extends State<Formulario3> {
  TextEditingController idmarcaController = TextEditingController();
  TextEditingController idproductoController = TextEditingController();
  TextEditingController nomProveedorController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController edoController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController encargadoController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Ferrari",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xffb51212),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: DrawerMenu(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ListView(
            shrinkWrap: true,
            children: [
              Text(
                'Formulario Clientes',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3e6777)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('id Clientes', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idmarcaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el id del cliente',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre del cliente', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idproductoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffff004c)), // Color del borde
                  ),
                  hintText: 'Escribe iel nombre del cliente',
                ),
                keyboardType: TextInputType.text,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Primer nombre', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nomProveedorController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.person, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el primer nombre',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Apellido', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: direccionController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.directions_car_rounded,
                      color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el apellido',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Fecha de nacimiento', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: edoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.location_city, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la fecha de nacimiento',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Telefono', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: telefonoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.call, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el numero telefonico',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Direccion', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: encargadoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.person, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la direccion',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Email', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el email del proveedor',
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idmarcaController.text);
                  print(idproductoController.text);
                  print(nomProveedorController.text);
                  print(direccionController.text);
                  print(edoController.text);
                  print(telefonoController.text);
                  print(encargadoController.text);
                  print(emailController.text);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xff3e6777)), // Cambia el color de fondo
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                    const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30), // Ajusta el padding
                  ),
                  textStyle: MaterialStateProperty.all<TextStyle>(
                    const TextStyle(
                        fontSize: 20,
                        fontWeight:
                            FontWeight.bold), // Cambia el estilo del texto
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          10.0), // Ajusta la forma del botón
                      // Puedes ajustar más propiedades aquí, como bordes, sombras, etc.
                    ),
                  ),
                ),
                child: Text(
                  'Enviar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
