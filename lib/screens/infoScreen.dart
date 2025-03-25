import 'package:flutter/material.dart';

class Infoscreen extends StatelessWidget {
  const Infoscreen({super.key});

  @override
  Widget build(BuildContext context) {
    String explicacao =
        "O jogo Pedra, Papel e Tesoura é um clássico jogo de decisão entre duas pessoas, mas neste app você jogará contra a máquina.\n"
        "Você terá que escolher uma das três opções disponíveis:\n"
        "- Pedra: Representada pela mão fechada, a pedra quebra a tesoura.\n"
        "- Papel: Representado pela mão aberta, o papel cobre a pedra.\n"
        "- Tesoura: Representada pela mão com o indicador e o médio estendidos, a tesoura corta o papel.\n"
        "A máquina também escolherá uma dessas opções de forma aleatória, e o objetivo é escolher a opção que vencerá a escolha da máquina.\n"
        "O jogo segue o ciclo de vitórias tradicional:\n"
        "- Pedra vence Tesoura\n"
        "- Tesoura vence Papel\n"
        "- Papel vence Pedra\n"
        "Se ambos escolherem a mesma opção, o jogo será empatado.\n"
        "Você terá a chance de testar sua sorte e estratégia enquanto joga contra o computador!";

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        surfaceTintColor: Colors.black,
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
          child: Container(
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
                    explicacao,
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
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 50,
          alignment: Alignment.center,
          child: Text(
            "Desenvolvido por Ryan Pompeo",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
