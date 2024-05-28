import 'widgets/botoes.dart';
import 'widgets/input.dart';
import 'package:flutter/material.dart';
import 'widgets/textos.dart';

class Produto extends StatefulWidget {
  const Produto({super.key});

  @override
  State<Produto> createState() => _ProdutoState();
}

class _ProdutoState extends State<Produto> {
  final _descricao = TextEditingController();
  final _valor = TextEditingController();
  final _imagem = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Textos('Festa na Caixa', Colors.white),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        color: Colors.pink[50], // Cor de fundo do corpo
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Textos('Festa na Caixa', Colors.black),
              Text('Novo Produto'),
              SizedBox(height: 20),
              Input(_descricao, 'Descrição do Produto'),
              Input(_valor, 'Valor do Produto'),
              Input(_imagem, 'Imagem do Produto'),
              SizedBox(height: 20),
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.add), // Ícone do botão
                    onPressed: _salvar,
                    // Adicionei onPressed apenas para o exemplo, substitua com sua lógica
                  ),
                  SizedBox(width: 10), // Espaçamento entre o botão e o texto
                  Text('Adicionar Produto'),
                ],
              ),
              SizedBox(height: 40),
              Text('Produtos Cadastrados')
            ],
          ),
        ),
      ),
    );
  }

  _salvar() {}
}