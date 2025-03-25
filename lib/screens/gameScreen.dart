import 'package:app_jokenpo/screens/infoScreen.dart';
import 'package:app_jokenpo/screens/jokenpo.dart';
import 'package:flutter/material.dart';

class Gamescreen extends StatefulWidget {
  const Gamescreen({super.key});

  @override
  State<Gamescreen> createState() => _GamescreenState();
}

class _GamescreenState extends State<Gamescreen> {
  bool start = false;
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        surfaceTintColor: Colors.black,
        backgroundColor: Colors.black,
        title: Text('Home', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  isHovered = true;
                });
              },
              onExit: (_) {
                setState(() {
                  isHovered = false;
                });
              },
              child: Container(
                margin: EdgeInsets.only(right: 20),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Infoscreen(),
                        ),
                      );
                    });
                  },
                  iconSize: 30,

                  icon: Icon(
                    (isHovered
                        ? Icons.lightbulb_rounded
                        : Icons.lightbulb_outline_rounded),
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 90),
              Container(
                margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
                height: 250,
                width: 590,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo.gif'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 250,
                child: IconButton(
                  iconSize: 40,
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Jokenpo()),
                      );
                    });
                  },
                  icon: Icon(Icons.play_arrow_rounded, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
