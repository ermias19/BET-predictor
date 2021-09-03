
part of 'players_bloc.dart';

@immutable
abstract class PlayersState {}

class PlayersInitial extends PlayersState {
 
   
}
class PlayerLoadingState extends PlayersState{
   List<Players> get props=>[];
}
class PlayerLoadedState extends  PlayersState{
  List<Players> player_list;
   @override 
   List<Object> get props=>[];
  
  PlayerLoadedState( { required this.player_list});
   
}
class PlayerErrorState extends  PlayersState{

  String message;
  PlayerErrorState({ required this.message});
  @override
   List<Players> get props=>[];
}