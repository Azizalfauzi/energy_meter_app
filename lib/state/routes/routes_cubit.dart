import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'routes_state.dart';

class RoutesCubit extends Cubit<RoutesState> {
  RoutesCubit() : super(RoutesSplashPage());
  Stream<RoutesState> mapEventToState(RoutesState state) async* {
    if (state is RoutesSplashPage) {
      emit(RoutesSplashPage());
    } else if (state is RoutesLoginPage) {
      emit(RoutesLoginPage());
    } else if (state is RoutesMainPage) {
      int initial = 0;
      emit(RoutesMainPage(initial));
    } else if (state is RoutesDetailPage) {
      String img = '';
      String vol = '';
      String curr = '';
      String pow = '';
      String room = '';
      String energy = '';
      emit(
        RoutesDetailPage(
          img,
          vol,
          curr,
          pow,
          room,
          energy,
        ),
      );
    } else {
      emit(RoutesSplashPage());
    }
  }
}
