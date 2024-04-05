import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controllers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future signIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text.trim(),
        password:_passwordController.text.trim() );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 150,
              ),
              Icon(
                  Icons.phone_android_rounded,
                  color: Colors.indigo.shade900,
                  size:50
              ),
              Padding(
                  padding: EdgeInsets.all(20),
                  child:Column(
                    children: [
                      Text(
                        "HELLO AGAIN",
                        style: GoogleFonts.actor(
                            fontWeight: FontWeight.bold,
                            fontSize: 30
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Welcome Back",
                        style:  GoogleFonts.actor(
                            fontWeight: FontWeight.normal,
                            fontSize: 20
                        ),
                      ),
                    ],
                  )
              ),
              /// Hello again
              SizedBox(
                height: 20,
              ),
              /// email textfield
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Email",
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                      ),
                      borderRadius: BorderRadius.circular(12)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                ),
              ),

              SizedBox(height: 15),

              /// password textfield
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 20.0),
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "password",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade400,
                        ),
                        borderRadius: BorderRadius.circular(12)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepPurple,
                        ),
                        borderRadius: BorderRadius.circular(12)
                    ),
                  ),
                ),
              ),
              SizedBox(height: 25,),


              /// signIn textField
              GestureDetector(
                onTap: ()=> ,
                child: Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.indigo
                  ),
                  child: Center(
                    child: Text(
                      "SignIn",
                      style: TextStyle(
                        color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a Member?",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16
                      ),
                    ),
                    Text(
                      "Register Now",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                          color: Colors.blue
                      ),
                    ),
                  ],
                ),
              )

              /// not A member register now

            ],
          ),
        ),
      ),
    );
  }
}
