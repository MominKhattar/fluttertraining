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

  final _formkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        changebutton = true;
      }
      );
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        changebutton = false;
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Form(
            key: _formkey,
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

                        validator: (String? value){
                          if(value!= null && value.isEmpty){
                            return "Username cannot be empty";
                        }
                          return null;
                        },

                        //is sy hum jo likhy gy woh welcome k sath ai ga


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

                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Password cannot be empty";
                          }
                          else if (value != null && value.length < 6) {
                            return "Password lenght should be atleast 6";
                          }
                          return null;
                        }
                      ),

                      SizedBox(
                        height: 25,
                      ),


                     Material(
                         color: Colors.purple,

                         borderRadius: BorderRadius.circular(changebutton? 45 : 5),

                       child: InkWell(
                         onTap: () => moveToHome(context),


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



                           ),

                         ),
                       ),








                    ],

                  ),


                )

              ],
            ),
          ),
        )
      ),
    );
  }
}
