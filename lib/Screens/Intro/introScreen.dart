
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      body: Column(
        children: [
          SizedBox(
            height: 190,
          ),
          Image.asset('assets/img/in.png',),
          SizedBox(
            height: 160,
          ),
          Text('Build Awesome Apps',style: TextStyle(
            fontSize: 32,
            letterSpacing: 1,
            wordSpacing: 1,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 10,
          ),
          Text("Let\'s put your creativity on the \n       development highway. ",style: TextStyle(
            fontSize: 18,
            letterSpacing: 1,
            wordSpacing: 1,
            color: Colors.black87
          ),),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(onTap: () {
                  Navigator.of(context).pushNamed('/login');
                },
                  child: Container(
                    height: 60,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'LOGIN',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Color(0xffFECE2E),
                      borderRadius: BorderRadius.circular(15),

                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'SIGNUP',style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
