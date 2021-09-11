import 'package:flutter/material.dart';

class Home_description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
      body: Home_player_desc(),
    ));
  }
}

Widget Home_player_desc() {
  return Container(
      child: Column(
    children: [
      Container(
        margin: EdgeInsets.only(top: 50),
        decoration: BoxDecoration(
          // color: Colors.orange,
          borderRadius: BorderRadius.circular(100)
        ),
       
        child: Image.asset(
          'assets/images/mulu-logos.jpeg',
        ),
        width: 100,
        height: 200,
      ),
      Container(
        width: 900,
        height: 300,
        child: ListView.builder(
            itemCount: 1,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                // color: Colors.blue,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: const Radius.circular(100),
                          bottomRight: const Radius.circular(100) ),
                        color:Colors.black,
                      ),
                      
                     
                      width: 300,
                      
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        
                        children: [
                          Row(
                            children: [
                              Text('lionel messi', style: TextStyle(color: Colors.red),),
                            ],
                          ),
                          Row(
                            children: [
                              Text('age:35', style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          Row(
                            children: [
                              Text('height:1.70', style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Postition:center forward', style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Club:barsa', style: TextStyle(color: Colors.red)),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Legue:Laliga', style: TextStyle(color: Colors.red)),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children:[ Container(
                        
                        width: 260,
                        height: 300,
                        // color: Colors.yellow,
                    
                          child:
                            Container(
                            
                              width: 30,
                              height: 30,
                    
                        
                             
                            ),
                        
                    
                    ),
                    Positioned(
                      
                      left: 20,
                      top:50,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration:BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100.0)
                        ),
                       
                        child: Center(
                          child: Text('ermias',style: TextStyle(
                            color: Colors.red
                            
                          ),),
                        ),
                      ),
                    ),
                    Positioned(
                      
                      left: 100,
                      top:50,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration:BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100.0)
                        ),
                       
                        child: Center(
                          child: Text('ermias',style: TextStyle(
                            color: Colors.red
                          ),),
                        ),
                      ),
                    ),Positioned(
                      
                      left: 200,
                      top:50,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration:BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100.0)
                        ),
                       
                        child: Center(
                          child: Text('ermias',style: TextStyle(
                            color:Colors.red
                          ),),
                        ),
                      ),
                    ),
                    Positioned(
                      
                      left: 20,
                      top:120,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration:BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100.0)
                        ),
                       
                        child: Center(
                          child: Text('ermias',style: TextStyle(
                            color: Colors.red,
                          ),),
                        ),
                      ),
                    ),
                     Positioned(
                      
                      left: 100,
                      top:120,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration:BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100.0)
                        ),
                       
                        child: Center(
                          child: Text('ermias',style: TextStyle(
                            color: Colors.red
                          ),),
                        ),
                      ),
                    ), 
                    Positioned(
                      
                      left: 200,
                      top:120,
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration:BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100.0)
                        ),
                       
                        child: Center(
                          child: Text('ermias',style: TextStyle(
                            color:Colors.red
                          ),),
                        ),
                      ),
                    )
                       ]
                    ),
                    
                  
                  ] )
              );
            }
        )
            ),
    ]
      )
  );
}

  
