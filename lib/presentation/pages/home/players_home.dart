import 'package:flutter/material.dart';

class Players_home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      body: Players_home_Widget(),
    ));
  }
}

Widget Players_home_Widget() {
  return Column(children: <Widget>[
    Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Text('Top  Soccer Players in the World ',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold,
                fontSize: 23))),
    SizedBox(
      height: 600,
      child: ListView.builder(
        // physics: NeverScrollableScrollPhysics(),
        // shrinkWrap: true,

        itemBuilder: (context, index) {
          return Container(
            child: Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 5),
              child: Stack(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.black, width: 5),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(249, 177, 177, 20),
                              blurRadius: 4,
                              offset: Offset(4, 8),
                            )
                          ]),
                      padding: EdgeInsets.fromLTRB(2, 5, 0, 5),
                      width: 340,
                      height: 80,
                      child: Container(
                        padding:EdgeInsets.fromLTRB(0, 0, 255, 1),
                          child: Image.asset(
                        'assets/images/mulu-logos.jpeg',
                        width: 10,
                        height: 10,
                      ))),
                      // child:Text('ermias'),
                  


                  Positioned(
                      left: 100,
                      top: 20,
                      child: Container(
                        child: Text(
                          'name:',
                          style: TextStyle(color: Colors.red),
                        ),
                      )),
                  Positioned(
                      left: 100,
                      top: 50,
                      child: Container(
                        child: Text(
                          'age:',
                          style: TextStyle(color: Colors.red),
                        ),
                      )),
                  Positioned(
                      left: 220,
                      top: 25,
                      child: Container(
                        child: Text(
                          'Postition:',
                          style: TextStyle(color: Colors.red),
                        ),
                      )),
                ],
              ),
            ),
          );
        },
      ),
    )
  ]);
}
