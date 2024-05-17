import 'package:flutter/material.dart';
import 'package:castaneda/drawer_menu.dart';

class Formulario2 extends StatefulWidget {
  static const String routeName = '/form2';

  @override
  _Formulario2State createState() => _Formulario2State();
}

class _Formulario2State extends State<Formulario2> {
  TextEditingController idUsuarioController = TextEditingController();
  TextEditingController nombreController = TextEditingController();
  TextEditingController aPatrernoController = TextEditingController();
  TextEditingController aMaternoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController direccionController = TextEditingController();
  TextEditingController celularController = TextEditingController();
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
                'Formulario Empleados',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3e6777)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('id Empleado', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idUsuarioController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el id del empleado',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.person_2, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el nombre',
                ),
                keyboardType: TextInputType.text,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Apellido Paterno', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: aPatrernoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.person, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el apellido paterno',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Clave', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: aMaternoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.person, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la clave',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Sueldo', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: passwordController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.money, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el sueldo',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Id Venta', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: direccionController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.directions_car,
                      color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el id de la venta',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Puesto', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: celularController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.call, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el puesto',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Edad', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email_outlined,
                      color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la edad',
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idUsuarioController.text);
                  print(nombreController.text);
                  print(aPatrernoController.text);
                  print(aMaternoController.text);
                  print(passwordController.text);
                  print(direccionController.text);
                  print(celularController.text);
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
