//Formulario de pago
import 'dart:ui';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:flutter/material.dart';

class FormCard extends StatefulWidget {
  const FormCard({Key? key}) : super(key: key);

  @override
  State<FormCard> createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  var cardMask = MaskTextInputFormatter(
    mask: '####-####-####-####', filter: { "#": RegExp(r'[0-9]') });
  var dateMask = MaskTextInputFormatter(
    mask: '##/##', filter: { "#": RegExp(r'[0-9]') });
  var codeMask = MaskTextInputFormatter(
    mask: '###', filter: { "#": RegExp(r'[0-9]') });
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.network(
            "https://usa.visa.com/content/dam/VCOM/global/common-assets/cards/visa-signature-business-card-800x450.png"),
          const SizedBox(
            height: 20,
          ),
          inputName(),
          const SizedBox(
            height: 10,
          ),
          inputCard(),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width*0.5,
                child: inputDate(),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.3,
                child: inputCode(),
              ),

            ],
          ),
          Container(
                margin: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width-30,
                child: ElevatedButton(onPressed: () {}, child:const Text("Pagar"))),
        ],
      ),
    );
  }

  Container inputName() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          keyboardType: TextInputType.name,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "Nombre",
            border: InputBorder.none),
        ));
  }

  Container inputCard() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          inputFormatters: [cardMask],
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "Number Card",
            border: InputBorder.none),
        ));
  }

  Container inputDate() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          inputFormatters: [dateMask],
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "01/22",
            border: InputBorder.none),
        ));
  }

  Container inputCode() {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: TextFormField(
          inputFormatters: [codeMask],
          keyboardType: TextInputType.number,
          style: const TextStyle(fontSize: 20),
          decoration: const InputDecoration(
            hintText: "CVV",
            border: InputBorder.none),
        ));
  }

  

}