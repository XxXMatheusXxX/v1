import 'package:flutter/material.dart'; // Importa o pacote material.dart do Flutter.

import 'Home.dart'; // Importa o arquivo Home.dart.

void main() {
  runApp(
      const MyApp()); // Inicia a aplicação
}

class MyApp extends StatelessWidget {
  // Classe MyApp é um widget
  const MyApp({super.key}); // Construtor da classe MyApp.

  @override
  Widget build(BuildContext context) {
    // Método build que constrói a interface do aplicativo.
    return const MaterialApp(
      // Retorna uma instância de MaterialApp.
      debugShowCheckedModeBanner: false, // Remove o banner
      home: home(), // Define a tela inicial como home.
    );
  }
}
