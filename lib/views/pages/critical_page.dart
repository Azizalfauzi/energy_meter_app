part of 'pages.dart';

class CriticalPage extends StatefulWidget {
  const CriticalPage({super.key});

  @override
  State<CriticalPage> createState() => _CriticalPageState();
}

class _CriticalPageState extends State<CriticalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Text(
          'Energy Meter',
          style: whiteTextStyleInter.copyWith(
            fontWeight: regular,
            fontSize: 14,
          ),
        ),
        leading: Container(
          height: 55,
          width: 55,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/ic_primary.png'),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: kFourthColor,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: kFourthColor,
            ),
          ),
        ],
      ),
    );
  }
}
