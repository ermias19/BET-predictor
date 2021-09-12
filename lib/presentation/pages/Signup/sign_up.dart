
import 'package:bloc_e_s/presentation/pages/Login/login.dart';
import 'package:bloc_e_s/presentation/routes/router.gr.dart';
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
class Sign_up extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Form(
    child: Column(
      children: [
        Container(
            padding: EdgeInsets.fromLTRB(0, 25, 0, 50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100.0),
              child: Image.asset(
                'assets/images/mulu-logos.jpeg',
                width: 200,
              ),
            )),
        Container(
            child: Row(
          children: [
            Container(
              width: 180,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TextField(
                style: TextStyle(color: Colors.red),
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.red,
                    ),
                    hintText: 'First Name',
                    hintStyle: TextStyle(color: Colors.red)),
              ),
            ),
            Container(
              width: 180,
              // padding: EdgeInsets.fromLTRB(0, 0, 20, 10),
              child: TextField(
                style: TextStyle(color: Colors.red),
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.red,
                    ),
                    hintText: 'Last Name',
                    hintStyle: TextStyle(color: Colors.red)),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.fromLTRB(20, 50, 1, 1),
            //   child: Text('ermias'),
            // )
          ],
        )),
        Container(
          child: TextField(
            style: TextStyle(color: Colors.red),
            decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  borderSide: BorderSide(color: Colors.red, width: 2.0),
                ),
                prefixIcon: Icon(
                  Icons.account_box_outlined,
                  color: Colors.red,
                ),
                hintText: 'Enter your Email',
                hintStyle: TextStyle(color: Colors.red)),
          ),
        ),
        Container(
            child: Row(
          children: [
            Container(
              width: 180,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: TextField(
                style: TextStyle(color: Colors.red),
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.red,
                    ),
                    hintText: ' Password',
                    hintStyle: TextStyle(color: Colors.red)),
              ),
            ),
            Container(
              width: 180,
              // padding: EdgeInsets.fromLTRB(0, 0, 20, 10),
              child: TextField(
                style: TextStyle(color: Colors.red),
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.red,
                    ),
                    hintText: 'Confirm P',
                    hintStyle: TextStyle(color: Colors.red)),
              ),
            ),

            // Padding(
            //   padding: EdgeInsets.fromLTRB(20, 50, 1, 1),
            //   child: Text('ermias'),
            // )
          ],
        )),
          Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(20)),

                          // ignore: deprecated_member_use
                          child: TextButton(
                            // key: Key("signupButton"),
                            onPressed: () {
                             context.router.push(LoginRoute());
                              // MaterialPageRoute(
                              //   builder:(BuildContext context){
                              //     return LoginPage();
                              //   }
                              // );
                              // context.router.push(LoginRoute);
                              // context.router.push(SignupRoute());
                            },
                            child: Text(
                              "Signup",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      )
      ],
    ),
  ),
      ),
    );
  }
}


  
