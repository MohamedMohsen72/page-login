import 'package:flutter/material.dart';
import 'package:login/register.dart';

class LoginView extends StatefulWidget {
  LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool isnotVesable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello !',
                  style: TextStyle(color: Colors.grey, fontSize: 35),
                ),
                Text(
                  'WELCOME BACK',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
                ),
                SizedBox(height: 45),
                Text('Email',
                    style: TextStyle(fontSize: 15, color: Colors.grey)),
                TextFormField(
                  decoration: InputDecoration(),
                ),
                SizedBox(height: 10),
                Text('Password',
                    style: TextStyle(fontSize: 15, color: Colors.grey)),
                TextFormField(
                  obscureText: isnotVesable,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isnotVesable = !isnotVesable;
                      });
                    },
                    icon: (isnotVesable)
                        ? Icon(Icons.remove_red_eye_outlined)
                        : Icon(Icons.visibility_off_outlined),
                  )),
                ),
                SizedBox(height: 30),
                Center(
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Log in'),
                    style: ElevatedButton.styleFrom(
                      elevation: 10,
                      minimumSize: Size(260, 50),
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Center(
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => RegisterView(),));
                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(color: Colors.grey, fontSize: 18,fontWeight: FontWeight.bold),
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
