import 'package:flutter/material.dart';
import 'package:castaneda/drawer_menu.dart';

class Formulario1 extends StatefulWidget {
  static const String routeName = '/form1';

  @override
  _Formulario1State createState() => _Formulario1State();
}

class _Formulario1State extends State<Formulario1> {
  TextEditingController idVentaController = TextEditingController();
  TextEditingController fechaVentaController = TextEditingController();
  TextEditingController idUsuarioController = TextEditingController();
  TextEditingController idProductoController = TextEditingController();
  TextEditingController nomProductoController = TextEditingController();
  TextEditingController envioController = TextEditingController();
  TextEditingController totalPagoController = TextEditingController();

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
                'Formulario Vehiculo',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff3e6777)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('ID Vehiculo', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idVentaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el id del vehiculo',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Numero de serie VIN', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: fechaVentaController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el numero de serie VIN',
                ),
                keyboardType: TextInputType.text,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Transmision', style: TextStyle(fontSize: 16)),
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
                  hintText: 'Escribe la transmision',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Costo', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idProductoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.abc_outlined, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el costo',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Modelo', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nomProductoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.circle, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el modelo',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Cilindros', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: envioController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.emoji_transportation,
                      color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe los cilindros',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Color', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: totalPagoController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.money, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el color',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(
                height: 10,
              ),

              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idVentaController.text);
                  print(fechaVentaController.text);
                  print(idUsuarioController.text);
                  print(idProductoController.text);
                  print(nomProductoController.text);
                  print(envioController.text);
                  print(totalPagoController.text);
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
