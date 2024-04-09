import 'package:flutter/material.dart';
import 'contador.dart';
import 'produto.dart';
import 'usuario.dart';
import 'IMC.dart';

class home extends StatefulWidget {
  // Classe home
  const home({super.key}); // Construtor da classe home.

  @override
  State<home> createState() =>
      _HomePageState(); // Cria e retorna uma instância de _HomePageState.
}

class _HomePageState extends State<home> {
  // Classe _HomePageState é um State<home>.
  @override
  Widget build(BuildContext context) {
    // Método build que constrói a interface do aplicativo.
    return Scaffold(
      // Retorna um Scaffold (estrutura básica de layout).
      appBar: AppBar(
        // Barra de aplicativo.
        title: Text("MENU"), // Título da barra.
        centerTitle: true, // Centraliza o título.
        backgroundColor: Colors.deepPurple, // Define a cor de fundo.
      ),
      body: SingleChildScrollView(
        // Corpo da tela com rolagem.
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        // Espaçamento interno.
        child: Column(
          // Coluna de widgets.
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // Alinhamento dos filhos.
          children: <Widget>[
            // Lista de widgets filhos.
            const Icon(
              // Ícone fixo.
              Icons.add_business_sharp, // Ícone de negócios.
              size: 140.0, // Tamanho do ícone.
              color: Colors.deepPurpleAccent, // Cor do ícone.
            ),
            Text(
              // Texto "Aplicação Principal".
              "Aplicação Principal", // Conteúdo do texto.
              textAlign: TextAlign.center, // Alinhamento central.
              style: TextStyle(
                  color: Colors.blueGrey, fontSize: 25.0), // Estilo do texto.
            ),
            Text(
              // Texto vazio.
              "", // Conteúdo vazio.
              textAlign: TextAlign.center, // Alinhamento central.
              style: TextStyle(
                  color: Colors.blueGrey, fontSize: 25.0), // Estilo do texto.
            ),
            Column(
              // Outra coluna de widgets.
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // Alinhamento dos filhos.
              children: <Widget>[
                // Lista de widgets filhos.
                ElevatedButton(
                  // Botão elevado.
                  onPressed: () {
                    // Ação ao pressionar o botão.
                    Navigator.push(
                      // Navega para outra tela.
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IMC()), // Tela IMC.
                    );
                  },
                  child: const Text('IMC'), // Texto do botão.
                ),
                ElevatedButton(
                  // Outro botão elevado.
                  onPressed: () {
                    // Ação ao pressionar o botão.
                    Navigator.push(
                      // Navega para outra tela.
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const Contador()), // Tela Contador.
                    );
                  },
                  child: const Text('Contador'), // Texto do botão.
                ),
                ElevatedButton(
                  // Mais um botão elevado.
                  onPressed: () {
                    // Ação ao pressionar o botão.
                    Navigator.push(
                      // Navega para outra tela.
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const Usuario()), // Tela Usuário.
                    );
                  },
                  child: const Text('Usuário'), // Texto do botão.
                ),
                ElevatedButton(
                  // Outro botão elevado.
                  onPressed: () {
                    // Ação ao pressionar o botão.
                    Navigator.push(
                      // Navega para outra tela.
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const Produto()), // Tela Produto.
                    );
                  },
                  child: const Text('Produto'), // Texto do botão.
                ),
                // Mais botões podem ser adicionados aqui.
              ],
            ),
          ],
        ),
      ),
    );
  }
}
