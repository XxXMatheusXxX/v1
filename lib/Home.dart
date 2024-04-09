import 'package:flutter/material.dart';
import 'contador.dart';
import 'produto.dart';
import 'usuario.dart';
import 'IMC.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _HomePageState();
}

class _HomePageState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(

              Icons.add_business_sharp,
              size: 140.0,
              color: Colors.deepOrange,
            ),
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const IMC())
                      );
                    },
                    child: const Text('IMC'),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Contador())
                      );
                    },
                    child: const Text('Contador'),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Usuario())
                      );
                    },
                    child: const Text('Usuário'),
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Produto())
                      );
                    },
                    child: const Text('Produto'),
                  ),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}