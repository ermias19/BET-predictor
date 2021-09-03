import 'package:bloc_e_s/data/models/players_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'business_logic/bloc/bloc/players_bloc.dart';
import 'counter_cubit.dart';
import 'data/repositories/player_repository.dart';
import 'dart:async';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterCubit>(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(
          create: (context)=>PlayersBloc(players_:player_repo()),
          child: MyHomePage(title: 'Flutter Demo Home Page')),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PlayersBloc playersbloc_;
  @override 
  void initState(){
    super.initState();
    playersbloc_=BlocProvider.of<PlayersBloc>(context);
    playersbloc_.add(FetchPlayerEvent());

    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:Container(
        
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
 Widget buildArticleList(List<Players> articles) {
    return ListView.builder(
      itemCount: articles.length,
      itemBuilder: (ctx, pos) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: ListTile(
              title:Text(articles[pos].club)
              
              
             
            ),
            
          ),
        );
      },
    );
  }