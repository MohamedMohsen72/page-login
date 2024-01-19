


import 'package:flutter/material.dart';
import 'package:login/login.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isnotVesable=true;
  bool isnotVesable1=true;
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
                  'WELCOME ',
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 35),
                ),
                SizedBox(height: 45),
                Text('Name',
                    style: TextStyle(fontSize: 15, color: Colors.grey)),
                TextFormField(
                  decoration: InputDecoration(),
                ),SizedBox(height: 10),
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
                SizedBox(height: 10),
                Text('Confirm Password',
                    style: TextStyle(fontSize: 15, color: Colors.grey)),
                TextFormField(
                  obscureText: isnotVesable,
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isnotVesable1 = !isnotVesable1;
                          });
                        },
                        icon: (isnotVesable1)
                            ? Icon(Icons.remove_red_eye_outlined)
                            : Icon(Icons.visibility_off_outlined),
                      )),
                ),


                SizedBox(height: 40),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('SIGN UP'),
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
                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have account?',style: TextStyle(color: Colors.grey, fontSize: 18),),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => LoginView(),));
                              });
                            },
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
                            ),),
                      ],
                    ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
