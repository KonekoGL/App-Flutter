import 'package:flutter/material.dart';
import 'package:flutterinput/Widgets/formulario_pago.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pago con tarjeta',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pago con tarjeta'),
        ),
        body: const FormCard(),
        ),
      );
  }
}
