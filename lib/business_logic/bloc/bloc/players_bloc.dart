import 'dart:async';
import 'package:http/http.dart' as http;

import 'package:bloc/bloc.dart';
import 'package:bloc_e_s/data/models/players_model.dart';
import 'package:bloc_e_s/data/repositories/player_repository.dart';

import 'package:meta/meta.dart';

part 'players_event.dart';
part 'players_state.dart';

class PlayersBloc extends Bloc<PlayersEvent, PlayersState> {
  player_repo players_;
  PlayersBloc( { required this.players_}) : super(PlayersInitial())  ;

  @override
  Stream<PlayersState> mapEventToState(PlayersEvent event) async*{
    if (event is PlayersEvent){
      yield PlayerLoadingState();
      try{
      List<Players> player_get=await players_.getplayers();
      yield PlayerLoadedState(player_list: player_get);
      }
      catch(e){
        yield PlayerErrorState(message:e.toString());
      }
    }
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
  
}
