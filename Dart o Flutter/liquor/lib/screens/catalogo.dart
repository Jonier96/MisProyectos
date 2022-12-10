import 'package:flutter/material.dart';

class catalogo extends StatefulWidget {
  const catalogo({super.key});

  @override
  State<catalogo> createState() => _catalogoState();
}

class _catalogoState extends State<catalogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(231, 14, 11, 31),
                Color.fromARGB(212, 2, 4, 43)
              ]),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Image.asset(
                    'assets/trago.jpg',
                    height: 380,
                    alignment: Alignment.center,
                    width: double.infinity,
                  ),
                  Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      width: double.infinity,
                      // height: 350,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromARGB(98, 255, 255, 255),
                              blurRadius: 15,
                              offset: Offset(0, 5),
                            )
                          ]),
                      child: Column(children: const <Widget>[
                        Text(
                          'Bebidas y Tragos',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.white,
                              fontSize: 50),
                        ),
                      ]))
                ])));
  }
}
