import 'package:flutter/material.dart';
import 'package:fluttertraining/utils/routes.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  bool changebutton = false;

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
              Text('Welcome $name',
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
                      onChanged: (value)
                      {
                        name = value;
                        setState(() {

                        });
                      },
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


                   InkWell(
                     onTap: ()
                     async {
                       setState(() {
                         changebutton = true;
                       }
                       );
                       await Future.delayed(Duration(seconds :1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                     },


                     child: AnimatedContainer(
                       duration: Duration(seconds: 1),
                       alignment: Alignment.center,
                       height: 45,
                       width: changebutton? 45 :120,
                       child: changebutton? Icon(Icons.done, color: Colors.white,): Text('Login',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 17,
                         ),),

                       decoration: BoxDecoration(
                        // shape: changebutton? BoxShape.circle : BoxShape.rectangle,
                         color: Colors.purple,
                         borderRadius: BorderRadius.circular(changebutton? 45 : 5)

                       ),

                     ),
                   )


                   /* ElevatedButton(onPressed: ()
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

                      ),*/



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
