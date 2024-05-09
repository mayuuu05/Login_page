import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatefulWidget {
   LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController txtEmail = TextEditingController();
TextEditingController txtPassword = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor:Color(0xffFECE2E),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 40,
                // right: 150
              ),
              child: Image.asset('assets/img/in.png',height: 250,),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Welcome Back',style: TextStyle(
                  fontSize: 32,
                  letterSpacing: 1,
                  wordSpacing: 1,
                  fontWeight: FontWeight.bold
              ),),
            ),
            SizedBox(
              height: 7,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text("Make it work,make it right,make it fast ",style: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1,
                  wordSpacing: 1,
                  color: Colors.black87
              ),),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10
              ),
              child: TextField(
                textInputAction: TextInputAction.next,
                controller: txtEmail,
                decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 30,
                    ),
                    label: Text('Email'),
                    labelStyle: TextStyle(
                        color: Colors.black54
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                        borderSide:
                        BorderSide(color: Colors.black, width: 2)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                      borderSide:
                      BorderSide(color: Colors.black45, width: 2),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.teal, width: 2)
                    ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10,
                  right: 10
              ),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                controller: txtPassword,

                decoration: InputDecoration(

                    prefixIcon: Icon(
                      Icons.fingerprint,
                      color: Colors.black,
                      size: 30,
                    ),
                    label: Text('Password'),
                    labelStyle: TextStyle(
                      color: Colors.black54
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10)),
                        borderSide:
                        BorderSide(color: Colors.black, width: 2)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10)),
                      borderSide:
                      BorderSide(color: Colors.black45, width: 2),
                    ),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(
                        right: 10
                      ),
                      child: Icon(Icons.visibility_off,color: Colors.black54,size: 30,),
                    )),

              ),
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password ?   ',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                'OR',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 15,),
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 1.5),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 15),
                    child: Container(
                      height:40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          // shape: BoxShape.circle,
                            borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image:AssetImage("assets/img/g.png")
                          )
                        ),
                    ),
                  ),
                  Text('Sign-In with Google' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),)
                ],
              ),
             ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an Account ?" , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),),
                SizedBox(width: 5,),
                Text('Signup' , style: TextStyle(color: Colors.red , fontWeight: FontWeight.w500,fontSize: 18),)
              ],
            )

          ],
        ),
      ),
    );
  }
}
