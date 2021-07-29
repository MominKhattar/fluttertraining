import 'package:flutter/material.dart';
import 'package:fluttertraining/utils/routes.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Image.asset('images/login.png',
              fit: BoxFit.fill,),
              Text('Welcome',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),

              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your Username",
                        labelText: "Username",
                      ),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
                        labelText: "Password",
                      ),
                    ),

                    SizedBox(
                      height: 25,
                    ),


                    ElevatedButton(onPressed: ()
                    {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);

                    },
                        child: Text('Login',
                        style: TextStyle(
                          fontSize: 18,
                        ),),
                      style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      ),

                      ),



                  ],

                ),


              )

            ],
          ),
        )
      ),
    );
  }
}
