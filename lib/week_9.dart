import 'package:flutter/material.dart';
import 'package:taskproject/WEEK_9/RealTime%20Database/R_Singup.dart';

import 'WEEK_9/Authentication/LoginScrenn.dart';
import 'Widget/commonWidget.dart';

class Week9 extends StatefulWidget {
  const Week9({Key? key}) : super(key: key);

  @override
  State<Week9> createState() => _Week9State();
}

class _Week9State extends State<Week9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Week 9",
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Colors.black54, Color.fromRGBO(0, 41, 102, 1)],
          ),
        ),
        child: ListView(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  },
                ));
              },
              child: commonContainer(title: "Authentication", height: 75),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return R_SignUpScreen();
                  },
                ));
              },
              child: commonContainer(title: "Realtime database", height: 75),
            ),
          ],
        ),
      ),
    );
  }
}
