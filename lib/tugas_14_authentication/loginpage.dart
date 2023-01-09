import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  registerSubmit()async{
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(email: _emailController.text.toString().trim(), password: _passwordController.text);

    }
    catch(e){
      print(e);
      SnackBar(content: Text(e.toString()),);
    }
  }

  loginSubmit()async{
    try {
      _firebaseAuth.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text).then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>homeScreen())));
    }
    catch(e){
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/logoNganggur.png",
                height: 60,
                width: 60,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Nganggur!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF1B0089)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration.collapsed(hintText: "Email"),
                ),
              ),

              const SizedBox(
                height: 10,
              ),

              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF1B0089)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _passwordController,
                  decoration: InputDecoration.collapsed(hintText: "Password"),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF1B0089),
                    border: Border.all(color: Color(0xFF1B0089)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    onPressed: () async {
                      registerSubmit();
                    },
                    child: const Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF1B0089),
                    border: Border.all(color: Color(0xFF1B0089)),
                    borderRadius: BorderRadius.circular(10)),
                child: TextButton(
                    onPressed: () async {
                      loginSubmit();
                    },
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500)
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
