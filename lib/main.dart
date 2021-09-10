import 'package:bloc_e_s/data/models/players_model.dart';
import 'package:bloc_e_s/presentation/pages/Login/login.dart';
import 'package:bloc_e_s/presentation/pages/Signup/sign_up.dart';
import 'package:bloc_e_s/presentation/pages/home/players_home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'business_logic/bloc/bloc/players_bloc.dart';
import 'counter_cubit.dart';



void main() =>runApp(Players_home());

// flutter build ios --debug (or --profile or --release)
// class MyApp extends StatelessWidget {
  
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<PlayersBloc>(
//       create: (_) => _newsBloc,
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home:Scaffold(
       
        
//         body:MyHomePage(title: 'Flutter Demo Home Page')),
//       ),
//     );
//   }
// }

class MyApp extends StatefulWidget {

  

  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
   final PlayersBloc _newsBloc = PlayersBloc(PlayersInitial());

   
  @override 
  void initState(){
    _newsBloc.add(FetchPlayerEvent());
     super.initState();
    // PlayersBloc playersbloc_;
    // super.initState();
    // playersbloc_=BlocProvider.of<PlayersBloc>(context);
    // playersbloc_.add(FetchPlayerEvent());

    
  }
  // @override
  // void dispose() {
  //   final PlayersBloc playersBloc = 
  //      BlocProvider.of<PlayersBloc>(context);
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text('ermias'),
        ),
        body:BlocProvider<PlayersBloc>(
        create: (_) => _newsBloc,
          
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
                       return buildplayersList(state.player_list);
                        
                      }
                     else  if(state is PlayerErrorState){
                        
                      }
                  return Container();
                    },
                    
                   
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterCubit>(context).increment();
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
Widget buildLoading(){
  return Center(
    child:CircularProgressIndicator(),
  );

}
Widget buildErrorui(String message){
  return Center(
    child:Padding(
      padding:const EdgeInsets.all(8.0),
      child:Text(
        message,
        style:TextStyle(color:Colors.red),
      )
    )
  );

}
 Widget buildplayersList(Players articles) {
    return ListView.builder(
      // itemCount: articles.length,
      itemBuilder: (ctx, pos) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: ListTile(
              title:Text(articles.totalPages.toString())
              
              
             
            ),
            
          ),
        );
      },
    );
  }