import 'package:flutter/material.dart';
import 'package:store/screens/Componet_home/body.dart';

class homeScream extends StatefulWidget {
  const homeScream({super.key});

  @override
  State<homeScream> createState() => _homeScreamState();
}

class _homeScreamState extends State<homeScream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(),
        body: const Catalogo(),
        drawer: Drawer(child: drawer()));
  }

  AppBar buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          color: Colors.black,
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.add_shopping_cart),
          color: Colors.black,
          onPressed: () {},
        ),
      ],
      flexibleSpace: appbar_color(),
      title: const Text("Store Tech"),
    );
  }

  Container drawer() {
    return Container(
        color: Colors.blueGrey[200],
        child: Column(children: [
          icon_drawer(),
          const Text(
            "Perfil",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Inicio(),
          categorias(),
          chat(),
          vender(),
          Expanded(child: Container()),
          ajustes(),
        ]));
  }

  Container appbar_color() {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.grey,
        Colors.blueGrey,
      ])),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Container ajustes() {
    return Container(
        margin: EdgeInsets.only(top: 2),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.grey[100],
        child: Text("Ajustes"));
  }

  Container vender() {
    return Container(
        margin: EdgeInsets.only(top: 2),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.grey[100],
        child: Text("Vender"));
  }

  Container chat() {
    return Container(
        margin: EdgeInsets.only(top: 2),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.grey[100],
        child: Text("Chat"));
  }

  Container categorias() {
    return Container(
        margin: EdgeInsets.only(top: 2),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.grey[100],
        child: Text("Categorias"));
  }

  Container Inicio() {
    return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.all(20),
        width: double.infinity,
        color: Colors.grey[100],
        child: Text(
          "Inicio",
        ));
  }

  Container icon_drawer() {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 20),
      width: double.infinity,
      child: const Icon(
        Icons.person_pin,
        color: Colors.white,
        size: 150,
      ),
    );
  }
}
