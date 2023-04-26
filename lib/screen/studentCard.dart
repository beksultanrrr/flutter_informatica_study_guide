import 'package:flutter/material.dart';

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  _IdCardState createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text("ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/studentImg.png"),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 30.0,
                color: Colors.grey[700],
              ),
              const Text(
                "NAME",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Samet Rauan Maratqyzy",
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                "Faculty",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "FIT",
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Text(
                "Cource",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "3",
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.email,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "rauan.samet@icloud.com",
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 18.0,
                        letterSpacing: 1.0),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
