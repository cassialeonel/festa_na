import 'cliente.dart';
import 'pedido.dart';
import 'produto.dart';
import 'widgets/botoes.dart';
import 'widgets/textos.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos('Festa na Caixa', Colors.white),
        backgroundColor: Colors.blueAccent,
        actions: [
          Buttons('Produtos', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Produto()));}),
          Buttons('Pedidos', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Pedido()));}),
          Buttons('Clientes', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Cliente()));})
        ],
      ),
      body: Container(
        color: Colors.pink[50], // Cor de fundo do corpo
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Textos('corpo vazio', Colors.black)
            ],
          ),
        ),
      ),
    );
  }
}
