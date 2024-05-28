import 'package:flutter/material.dart';
//import 'widgets/input.dart';
import 'widgets/textos.dart';
//import 'widgets/botoes.dart';

class Cliente extends StatefulWidget {
  const Cliente({super.key});

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  final _concli = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos('Festa na Caixa', Colors.white),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        color: Colors.yellow[50], // Cor de fundo do corpo
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Textos('Festa na Caixa', Colors.black),
              Text('Clientes Cadastrados'),
              SizedBox(height: 20),
              TextField(
                controller: _concli,
                decoration: InputDecoration(
                  hintText: 'Consultar Cliente',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () {
                      // Ação quando o botão dentro do input é pressionado
                      print('Botão dentro do input pressionado');
                    },
                  ),
                ),
              ),
              SizedBox(height: 40),
              Text('Clientes Encontrados')
            ],
          ),
        ),
      ),
    );
  }
}
