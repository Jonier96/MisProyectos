import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:liquor/widgets/input_decorations.dart';
import '';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            cajagriz(Size),
            Iconoperson(),
            loginfront(context),
          ],
        ),
      ),
    );
  }

  SingleChildScrollView loginfront(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 250,
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
            child: Column(
              children: [
                const SizedBox(height: 10),
                Text("Login", style: Theme.of(context).textTheme.headline4),
                const SizedBox(height: 30),
                Container(
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          autocorrect: false,
                          decoration: InputDecorations.inputDecoration(
                              hintext: "ejemplo@correo.com",
                              labeltext: "correo electronico",
                              icon: const Icon(Icons.alternate_email_rounded)),
                          validator: (value) {
                            String pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regExp = new RegExp(pattern);
                            return regExp.hasMatch(value ?? "")
                                ? null
                                : "el valor ingresado no es un correo";
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          obscureText: true,
                          autocorrect: false,
                          decoration: InputDecorations.inputDecoration(
                              hintext: "********",
                              labeltext: "contraseña",
                              icon: const Icon(Icons.lock_outline)),
                          validator: (value) {
                            return (value != null && value.length >= 6)
                                ? null
                                : "la contraseña debe ser mayor a los 6 caracteres";
                          },
                        ),
                        const SizedBox(height: 30),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          disabledColor: Color.fromARGB(255, 255, 155, 15),
                          color: Colors.deepPurple[800],
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                            child: const Text("Iniciar",
                                style: TextStyle(color: Colors.white)),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "menu");
                          },
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 50),
          const Text("Crear una nueva cuenta",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white))
        ],
      ),
    );
  }

  SafeArea Iconoperson() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: Image.asset('assets/coctel.jpg'),
        // color: Colors.white,
      ),
    );
  }

  Container cajagriz(Size Size) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(231, 14, 11, 31),
          Color.fromARGB(212, 2, 4, 43)
        ]),
      ),
      width: double.infinity,
      height: double.infinity,
    );
  }
}
