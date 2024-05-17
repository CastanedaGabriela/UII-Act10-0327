import 'package:flutter/material.dart';

import 'package:castaneda/formularioCompra.dart';
import 'package:castaneda/formularioProducto.dart';
import 'package:castaneda/formularioProveedor.dart';
import 'package:castaneda/formularioUsuario.dart';
import 'formularioVenta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const String form1 = Formulario1.routeName;
  static const String form2 = Formulario2.routeName;
  static const String form3 = Formulario3.routeName;
  static const String form4 = Formulario4.routeName;
  static const String form5 = Formulario5.routeName;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ejemplo Drawer Menu',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        form1: (context) => Formulario1(),
        form2: (context) => Formulario2(),
        form3: (context) => Formulario3(),
        form4: (context) => Formulario4(),
        form5: (context) => Formulario5(),
      },
      home: Formulario1(),
    );
  }
}
