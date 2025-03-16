import 'package:flutter/material.dart';

class Infoscreen extends StatelessWidget {
  const Infoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
        ),
        title: Text(
          'Como Jogar',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30),
              Container(
                width: 120,
                height: 10,
                decoration: BoxDecoration(
                  color: Colors.cyanAccent,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              SizedBox(height: 30),

              Container(
                width: 500,
                child: Text(
                  'Ah, Pedra, Papel, Tesoura, o jogo aparentemente simples, mas, no fundo, uma metáfora safada da própria vida. Você escolhe entre três opções, e cada uma delas se relaciona com o outro de maneira... erótica. A Pedra (✊), com sua força bruta, esmagando a Tesoura (✌), uma luta de poder, onde a superioridade se impõe pela força. A Tesoura corta o Papel (✋), com um movimento afiado, como um amante que busca se libertar das amarras do convencional. E o Papel, ah, o Papel... suave, envolvente, cobrindo a Pedra, como uma sedução sutil que domina pela inteligência, não pela força. Tudo isso, claro, para levar você a um momento de prazer efêmero, uma vitória que, no fundo, nunca é verdadeira.\nMas e quando ocorre o empate? Quando ambos se encontram no mesmo nível, no mesmo movimento... Ah, a eterna repetição do jogo. Um jogo onde a escolha não é apenas sobre vencer, mas sobre entender que, no fundo, estamos todos dançando a mesma dança. Você tenta enganar, manipular, seduzir o outro para que ele caia na sua armadilha, mas no fundo, a vida é apenas um jogo de adivinhações, de jogadas calculadas, e de enganos. No final, você se vê em um ciclo eterno, tentando prever o imprevisível, onde a única coisa que realmente importa é a sensação de controle, e a doce ilusão de que você, de alguma forma, fez a escolha certa.',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 120,
                height: 10,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 196, 4, 218),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
