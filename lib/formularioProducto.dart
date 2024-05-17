import 'package:flutter/material.dart';
import 'package:castaneda/drawer_menu.dart';

class Formulario4 extends StatefulWidget {
  static const String routeName = '/form4';

  @override
  _Formulario4State createState() => _Formulario4State();
}

class _Formulario4State extends State<Formulario4> {
  TextEditingController idProductoController = TextEditingController();
  TextEditingController nombreProductoController = TextEditingController();
  TextEditingController idmarcaController = TextEditingController();
  TextEditingController contenidoController = TextEditingController();
  TextEditingController tipoDulceController = TextEditingController();
  TextEditingController precioController = TextEditingController();
  TextEditingController precioPaqController = TextEditingController();

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
                'Formulario Proveedor',
                style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffb51212)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('id Fabrica', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: idProductoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el id de la fabrica',
                ),
                keyboardType: TextInputType.number,
              ),

              //some space between name and email
              const SizedBox(
                height: 10,
              ),
              const Text('Direccion', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: nombreProductoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.numbers, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xffff004c)), // Color del borde
                  ),
                  hintText: 'Escribe la direccion',
                ),
                keyboardType: TextInputType.text,
              ),
              //some space between email and mobile
              const SizedBox(
                height: 10,
              ),
              const Text('Nombre de la empresa',
                  style: TextStyle(fontSize: 16)),
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
                  hintText: 'Escribe el Nombre de la empresa',
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text('Ciudad', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: contenidoController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.circle, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la ciudad',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Estado', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: tipoDulceController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.circle, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el estado',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Transporte', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: precioController,
                decoration: InputDecoration(
                  prefixIcon:
                      const Icon(Icons.money_off, color: Color(0xff3e6777)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe el transporte',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text('Fecha de llegada', style: TextStyle(fontSize: 16)),
              const SizedBox(
                height: 5,
              ),
              TextField(
                controller: precioPaqController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.money_off_csred,
                      color: Color(0xffb51212)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                        color: Color(0xff3e6777)), // Color del borde
                  ),
                  hintText: 'Escribe la Fecha de llegada',
                ),
              ),
              SizedBox(
                height: 10,
              ),

              ElevatedButton(
                onPressed: () {
                  //we will trying to print input
                  print(idProductoController.text);
                  print(nombreProductoController.text);
                  print(idmarcaController.text);
                  print(contenidoController.text);
                  print(tipoDulceController.text);
                  print(precioController.text);
                  print(precioPaqController.text);
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
