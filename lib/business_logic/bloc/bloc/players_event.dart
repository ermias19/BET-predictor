
part of 'players_bloc.dart';


@immutable
abstract class PlayersEvent extends Equatable {}
class FetchPlayerEvent extends PlayersEvent{
  @override
  List<Object> get props=>[];
  
}