part of 'routes_cubit.dart';

abstract class RoutesState extends Equatable {
  const RoutesState();

  @override
  List<Object> get props => [];
}

class RoutesInitial extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesSplashPage extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesLoginPage extends RoutesState {
  @override
  List<Object> get props => [];
}

class RoutesMainPage extends RoutesState {
  final int initial;
  const RoutesMainPage(this.initial);
  @override
  List<Object> get props => [initial];
}

class RoutesDetailPage extends RoutesState {
  final String img;
  final String vol;
  final String curr;
  final String pow;
  final String room;
  final String energy;
  const RoutesDetailPage(
    this.img,
    this.vol,
    this.curr,
    this.pow,
    this.room,
    this.energy,
  );
  @override
  List<Object> get props => [
        img,
        vol,
        curr,
        pow,
        room,
        energy,
      ];
}
