
import 'package:http/http.dart' as http;
import 'package:bloc_e_s/business_logic/bloc/bloc/players_bloc.dart';
import 'package:bloc_e_s/data/models/players_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// articles.items[0].headshot.imgUrl
Image_url_meaker<String>( url){
  var final_image_url=url;
  var ermias=final_image_url.split('/');
  var baba=ermias.sublist(7,15);
  int num=1;
  while(num<15){
   
    baba.insert(num,'/');
    
 num+=2;
 
  }

  var  url_alpha= ('https://www.ea.com/fifa/ultimate-team/web-app/content/${baba.join()}');
  // var url_rdecoed=json.decode(response.body);s
  print('${url_alpha}');
  return url_alpha;
}
// String Imgae_url_provider(index , articles){
//   var ermiasddd= Image_url_meaker(articles.items[index].headshot.imgUrl).toString();
//   return{
//     ermiasddd;
//   }
  

// }

class Players_home extends StatefulWidget {
  @override
  _Players_home createState() => _Players_home();
}

class _Players_home extends State<Players_home> {
  final PlayersBloc Players_home_bloc = PlayersBloc(PlayersInitial());
  @override
  void initState() {
    Players_home_bloc.add(FetchPlayerEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.red,
      body: BlocProvider<PlayersBloc>(
        create: (context) => Players_home_bloc,
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
                       return Players_home_Widget(state.player_list);
                        
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

Widget Players_home_Widget(Players articles) {
  var  ermiassssss=articles.items[0].headshot.imgUrl;

  // while(num<14)
  // for(var i=1;i<12; i+2){
  //  baba.insert(i,'/');

  // }
// print(Image_url_meaker(articles.items[0].headshot.imgUrl))
  // print('dfdsfdsfdsfdsfsd${Imgae_url_provider(0, articles).runtimeType}');
  return Column(children: <Widget>[
    Container(
        padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
        child: Text('Top  Soccer Players in the World ',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.bold,
                fontSize: 23))),
    // Container(child:TextButton(child:Text('ermias'),onPressed: (){
    //   context.router.push(Sign_up());

    // },)),
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
                          padding: EdgeInsets.fromLTRB(0, 0, 255, 1),
                          child: Image.network(Image_url_meaker(articles.items[index].headshot.imgUrl)),

                            width: 10,
                            height: 10,
                          )),
                  // child:Text('ermias'),

                  Positioned(
                      left: 100,
                      top: 20,
                      child: Container(
                        child: Text(
                         'name: ${ articles.items[index].firstName.toString()}  ',
                          style: TextStyle(color: Colors.red),
                        ),
                      )),
                  Positioned(
                      left: 100,
                      top: 50,
                      child: Container(
                        child: Text(
                          'age: ${articles.items[index].age.toString()}',
                          style: TextStyle(color: Colors.red),
                        ),
                      )),
                  Positioned(
                      left: 220,
                      top: 25,
                      child: Container(
                        child: Text(
                          'Postition: ${articles.items[index].position}',
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
