
part of 'players_bloc.dart';


abstract class PlayersState extends Equatable {
const PlayersState();
}
class PlayersInitial extends PlayersState {
  const PlayersInitial();
  // TODO: implement props
   List<Object> get props=>[];
 
   
}
class PlayerLoadingState extends PlayersState{
  const PlayerLoadingState();
   List<Object> get props=>[];
}
// ignore: must_be_immutable
class PlayerLoadedState extends  PlayersState{
  // ignore: non_constant_identifier_names
  final Players player_list;
   const PlayerLoadedState(this.player_list);
   
   @override
   List<Object> get props => [player_list];
  
  // ignore: non_constant_identifier_names
 
   
}
class PlayerErrorState extends  PlayersState{

  String message;
  PlayerErrorState({ required this.message});
  List<Players> get props=>[];
}