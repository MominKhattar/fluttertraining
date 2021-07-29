import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Image.asset('images/login.png',
          fit: BoxFit.cover,),
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
                { print('Login');},
                    child: Text('Login',
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                 padding: EdgeInsets.symmetric(horizontal: 35),
                  ),

                  ),


              ],

            ),


          )

        ],
      )
    );
  }
}
