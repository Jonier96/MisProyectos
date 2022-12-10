import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:store/widgets/input_decorations.dart';

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
                color: Colors.grey[400],
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
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
                          disabledColor: Colors.grey[700],
                          color: Colors.grey,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 80, vertical: 15),
                            child: const Text("Iniciar",
                                style: TextStyle(color: Colors.black)),
                          ),
                          onPressed: () {
                            Navigator.pushReplacementNamed(context, "Home");
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
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  SafeArea Iconoperson() {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: const Icon(
          Icons.person_pin,
          color: Colors.white,
          size: 200,
        ),
      ),
    );
  }

  Container cajagriz(Size Size) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(44, 63, 85, 98),
        Color.fromARGB(92, 27, 89, 126)
      ])),
      width: double.infinity,
      height: Size.height * 0.4,
      child: Stack(
        children: [
          Positioned(child: borbuja(), top: 90, left: 30),
          Positioned(child: borbuja(), top: -40, left: -30),
          Positioned(child: borbuja(), top: -50, right: -20),
          Positioned(child: borbuja(), bottom: -50, left: 10),
          Positioned(child: borbuja(), bottom: 120, right: -20),
        ],
      ),
    );
  }

  Container borbuja() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromARGB(73, 171, 183, 195),
      ),
    );
  }
}
