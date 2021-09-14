import 'package:bloc_e_s/business_logic/bloc/bloc/players_bloc.dart';
import 'package:bloc_e_s/data/models/players_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home_description extends StatefulWidget {
  //
@override 
_Home_description createState() => _Home_description();
}
class _Home_description extends State<Home_description>{
 
     final PlayersBloc _players_desc_bloc = PlayersBloc(PlayersInitial());
     @override 
  void initState(){
    _players_desc_bloc.add(FetchPlayerEvent());
     super.initState();
    // PlayersBloc playersbloc_;
    // super.initState();
    // playersbloc_=BlocProvider.of<PlayersBloc>(context);
    // playersbloc_.add(FetchPlayerEvent());

    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.red,
      body:BlocProvider<PlayersBloc>(
        create: (context) => _players_desc_bloc,
        child: BlocListener<PlayersBloc, PlayersState>(
            listener: (context, state) {
              if (state is PlayerErrorState) {
                        // ignore: deprecated_member_use
                        Scaffold.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.message),
                          ),
                        );
                      }
                    },
          
            child: BlocBuilder<PlayersBloc, PlayersState>(
                    builder: (context,state){
                      if(state is PlayersInitial){
                        return buildLoading();
          
                      }
                      else if(state is PlayerLoadingState){
                        return buildLoading();
                        
                      }
                     else if(state is PlayerLoadedState){
                       return Home_player_desc(state.player_list);
                        
                      }
                     else  if(state is PlayerErrorState){
                        
                      }
                  return Container();
                    },
                    
                   
                  ),
          ),
      ),
     
    ));
  }
}
Widget buildLoading(){
  return Center(
    child:CircularProgressIndicator(),
  );

}
Widget Home_player_desc(Players articles) {

  //  print(articles.items[8]);
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
                                Text(articles.page.toString(), style: TextStyle(color: Colors.red),),
                              ],
                            ),
                            Row(
                              children: [
                                Text(articles.totalResults.toString(), style: TextStyle(color: Colors.red)),
                              ],
                            ),
                            Row(
                              children: [
                                Text('articles.type', style: TextStyle(color: Colors.red)),
                               
                              ],
                            ),
                            Row(
                              children: [
                                Text(articles.count.toString(), style: TextStyle(color: Colors.red)),
                              ],
                            ),
                            Row(
                              children: [
                                Text(articles.totalPages.toString(), style: TextStyle(color: Colors.red)),
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
        ),
      
  );
}

  
