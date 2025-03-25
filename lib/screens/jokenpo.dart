import 'package:flutter/material.dart';
import 'dart:math';

class Jokenpo extends StatefulWidget {
  const Jokenpo({super.key});

  @override
  State<Jokenpo> createState() => _JokenpoState();
}

class _JokenpoState extends State<Jokenpo> {
  Image playerRock = Image.asset(
    'assets/images/rockLeft.png',
    width: 200,
    height: 200,
  );
  Image playerScissor = Image.asset(
    'assets/images/scissorLeft.png',
    width: 200,
    height: 200,
  );
  Image playerPaper = Image.asset(
    'assets/images/paperLeft.png',
    width: 200,
    height: 200,
  );
  Image botRock = Image.asset(
    'assets/images/rockRight.png',
    width: 200,
    height: 200,
  );
  Image botScissor = Image.asset(
    'assets/images/scissorRight.png',
    width: 200,
    height: 200,
  );
  Image botPaper = Image.asset(
    'assets/images/paperRight.png',
    width: 200,
    height: 200,
  );

  int scorePlayer = 0;
  String txtBot = '';
  String lastGame = 'NENHUM';
  String txtPlayer = '';
  int scoreBot = 0;
  int? playerMove;
  int? botMove;
  bool start = false;
  Image atualEscolha = Image.asset(
    'assets/images/background.png',
    width: 200,
    height: 200,
  );
  Image botEscolha = Image.asset(
    'assets/images/background.png',
    width: 200,
    height: 200,
  );

  Image rock = Image.asset('assets/images/rock.png', width: 90, height: 90);
  Image paper = Image.asset('assets/images/paper.png', width: 90, height: 90);
  Image scissor = Image.asset(
    'assets/images/scissor.png',
    width: 90,
    height: 90,
  );

  _escolhaPlayer(int escolha) {
    setState(() {
      playerMove = escolha;
      if (escolha == 0) {
        atualEscolha = playerRock;
        txtPlayer = 'PEDRA';
      } else if (escolha == 1) {
        atualEscolha = playerPaper;
        txtPlayer = 'PAPEL';
      } else if (escolha == 2) {
        atualEscolha = playerScissor;
        txtPlayer = 'TESOURA';
      }

      botMove = Random().nextInt(3);
      if (botMove == 0) {
        botEscolha = botRock;
        txtBot = 'PEDRA';
      } else if (botMove == 1) {
        botEscolha = botPaper;
        txtBot = 'PAPEL';
      } else {
        botEscolha = botScissor;
        txtBot = 'TESOURA';
      }

      _checkWinner();
    });
  }

  _checkWinner() {
    if (playerMove == botMove) {
      lastGame = 'EMPATE';
    } else if ((playerMove == 0 && botMove == 2) ||
        (playerMove == 1 && botMove == 0) ||
        (playerMove == 2 && botMove == 1)) {
      lastGame = "VITÓRIA";
      scorePlayer++;
    } else {
      lastGame = "DERROTA";
      scoreBot++;
    }
  }

  _restart() {
    setState(() {
      txtBot = '';
      lastGame = 'NENHUM';
      txtPlayer = '';
      scorePlayer = 0;
      scoreBot = 0;
      playerMove = 0;
      botMove = null;
      atualEscolha = Image.asset(
        'assets/images/background.png',
        width: 200,
        height: 200,
      );
      botEscolha = Image.asset(
        'assets/images/background.png',
        width: 200,
        height: 200,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        surfaceTintColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Jokenpo Game',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30, 20, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'PLAYER\n${scorePlayer}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    'BOT\n${scoreBot}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    atualEscolha,
                    Text(
                      txtPlayer.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),

                Column(
                  children: [
                    botEscolha,
                    Text(
                      txtBot.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Divider(
              thickness: 2,
              color: Colors.white,
              indent: 60,
              endIndent: 60,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            iconSize: 30,
                            color: Colors.white,
                            onPressed: () {
                              setState(() {
                                _restart();
                              });
                            },
                            icon: Icon(Icons.refresh_sharp),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Text(
                        'ULTIMO JOGO',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      SizedBox(height: 30),
                      Text(
                        lastGame,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color:
                              lastGame == "VITÓRIA"
                                  ? const Color.fromARGB(255, 7, 226, 14)
                                  : lastGame == "DERROTA"
                                  ? const Color.fromARGB(255, 222, 22, 7)
                                  : lastGame == "EMPATE"
                                  ? const Color.fromARGB(255, 230, 208, 6)
                                  : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _escolhaPlayer(0);
                        },
                        child: rock,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'PEDRA',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _escolhaPlayer(1);
                        },
                        child: paper,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'PAPEL',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _escolhaPlayer(2);
                        },
                        child: scissor,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'TESOURA',
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
