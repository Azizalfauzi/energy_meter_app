part of 'pages.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoutesCubit, RoutesState>(
      builder: (_, pageState) => (pageState is RoutesSplashPage)
          ? const SplashScreenPage()
          : (pageState is RoutesLoginPage)
              ? const LoginPage()
              : (pageState is RoutesMainPage)
                  ? MainPage(
                      initialPage: pageState.initial,
                    )
                  : (pageState is RoutesDetailPage)
                      ? DetailPage(
                          img: pageState.img,
                          vol: pageState.vol,
                          curr: pageState.curr,
                          pow: pageState.pow,
                          room: pageState.room,
                          energy: pageState.energy,
                        )
                      : const SplashScreenPage(),
    );
  }
}
