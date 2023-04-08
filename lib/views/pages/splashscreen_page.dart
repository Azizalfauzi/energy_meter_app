part of 'pages.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    _checkStatusPage();
    super.initState();
  }

  Future<void> _checkStatusPage() async {
    var duration = const Duration(milliseconds: 2000);
    Timer(duration, () {
      context.read<RoutesCubit>().emit(RoutesLoginPage());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff141519),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 4,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ic_primary.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Text(
              'Energy Meter',
              style: whiteTextStyleInter.copyWith(
                fontSize: 24,
                fontWeight: bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
