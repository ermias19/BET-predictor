part of 'players_bloc.dart';
// import 'package:equatable/equatable.dart';

@immutable
abstract class PlayersEvent  {}
class FetchPlayerEvent extends PlayersEvent{
  @override
  List<Object> get props=>[];
  
}