import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Login_Page extends StatefulWidget {
  @override
 _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {

  String name = "";

  bool changeButton=false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),

            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/log.png",
              fit: BoxFit.cover,
              // height: 500,
              // width: 500
              
            ),
             Text(
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter user name",
                      labelText: "Username",
                    ),
                    onChanged: (value){
                      name = value;
                      setState((){});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "Password",
                    ),
                    
                  ),
                  const SizedBox(
                    height: 40,
                  ),

                  InkWell(

                      onTap: () async {
                        setState((){
                          changeButton=true;
                        });

                        await Future.delayed(Duration(seconds:1));
                          Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },



                    child: AnimatedContainer(
                      duration:Duration(seconds:1),
                      width: changeButton?50:150,
                      height: 50,
                      alignment: Alignment.center,
                      child:changeButton
                      ?
                      Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                      : Text(
                        "Login",
                        style:TextStyle(
                          color:Colors.white,
                          fontWeight:FontWeight.bold,
                          fontSize:18,
                        ),
                      ),
                  
                  
                      decoration:BoxDecoration(
                          color:Colors.deepPurple,
                          // shape:changeButton?BoxShape.circle:BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(changeButton?50:8),
                      ),
                    ),
                  ),


                  // ElevatedButton(
                  //   child: const Text('Login'),
                  //   style: TextButton.styleFrom(
                  //     backgroundColor: Colors.red,
                  //     minimumSize: const Size(180, 40),
                  //   ),
                  //   onPressed: () {
                  //     
                  //   },
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
