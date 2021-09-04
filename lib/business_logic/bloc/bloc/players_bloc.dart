import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_e_s/data/models/players_model.dart';
import 'package:bloc_e_s/data/repositories/player_repository.dart';

import 'package:meta/meta.dart';

part 'players_event.dart';
part 'players_state.dart';

class PlayersBloc extends Bloc<PlayersEvent, PlayersState> {
 final  Player_repo players_=Player_repo();

  PlayersBloc(PlayersState initialState) : super(PlayersInitial());

  // PlayersBloc(PlayersState initialState) : super(initialState);
  // PlayersBloc( { required this.players_}) : super(PlayersInitial())  ;

  // PlayersState get  initialState => PlayersInitial();  

  @override
  Stream<PlayersState> mapEventToState(PlayersEvent event) async*{
    if (event is FetchPlayerEvent){
      try{
        yield PlayerLoadingState();
        final playerListB=await players_.getplayers();
      // List<Players> player_get=await players_.getplayers();
      yield PlayerLoadedState(playerListB);
      
      }
      catch(e){
        yield PlayerErrorState(message:e.toString());
        
      }
    }
    // ignore: todo
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
  // void dispose() {
  //   _serviceController.close();
  //   _isDisposed = true;
  // }
  
  
}
