import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bloc_e_s/presentation/routes/router.gr.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: Colors.black,
            body: Form(
              child: Center(
                child: Column(

                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        
                        padding: EdgeInsets.fromLTRB(0, 25, 0, 50),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.asset(
                              'assets/images/mulu-logos.jpeg',
                              width: 200,
                            )

                            // width:200 ,
                            // height:300,
                            // decoration: BoxDecoration(
                            //   // border:Border.all(color: Colors.red, width: 2),
                            //   borderRadius: BorderRadius.circular(20),
                            // ),

                            ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: TextField(
                          style: TextStyle(color: Colors.red),
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.0),
                              ),
                              prefixIcon: Icon(
                                Icons.account_box_outlined,
                                color: Colors.red,
                              ),
                              hintText: 'Enter your Email',
                              hintStyle: TextStyle(color: Colors.red)),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                        child: TextField(
                          style: TextStyle(color: Colors.red),
                          obscureText: true,
                          decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.0),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                borderSide:
                                    BorderSide(color: Colors.red, width: 2.0),
                              ),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Colors.red,
                              ),
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(color: Colors.red)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(20)),

                          // ignore: deprecated_member_use
                          child: TextButton(
                            onPressed: () {
                              context.router.push(Players_home());
                            },
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.red, width: 2),
                              borderRadius: BorderRadius.circular(20)),

                          // ignore: deprecated_member_use
                          child: TextButton(
                            onPressed: () {
                              context.router.push(Sign_up());
                            },
                            child: Text(
                              "create an account",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
              ),
            )));
  }
}
