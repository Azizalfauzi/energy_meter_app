part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
              Icons.more_vert,
              color: kFourthColor,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: mockRoom
                .map(
                  (e) => Padding(
                    padding: EdgeInsets.only(bottom: e.id == 4 ? 100 : 0),
                    child: CustomCardRoom(
                      lImage: e.img,
                      tRoom: e.room,
                      sEnergy: e.energy,
                      cVoltage: e.vol,
                      cCurrent: e.curr,
                      cPower: e.pow,
                      statvol: e.statvol,
                      statpcurr: e.statpcurr,
                      statpow: e.statpow,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}

//               CustomCardRoom(
//                 lImage: 'assets/image_rs_1.png',
//                 tRoom: 'Operation Room 01',
//                 sEnergy: '1.500.000',
//                 cVoltage: '18 V',
//                 cCurrent: '56,14 A',
//                 cPower: '56,2 W',
//               ),
//               CustomCardRoom(
//                 lImage: 'assets/image_rs_2.png',
//                 tRoom: 'Operation Room 02',
//                 sEnergy: '1.300.000',
//                 cVoltage: '19 V',
//                 cCurrent: '52,14 A',
//                 cPower: '57,2 W',
//               ),
//               CustomCardRoom(
//                 lImage: 'assets/image_rs_3.png',
//                 tRoom: 'Operation Room 03',
//                 sEnergy: '1.430.000',
//                 cVoltage: '15 V',
//                 cCurrent: '60,14 A',
//                 cPower: '48,2 W',
//               ),
//               CustomCardRoom(
//                 lImage: 'assets/image_rs_4.png',
//                 tRoom: 'Operation Room 04',
//                 sEnergy: '1.450.000',
//                 cVoltage: '20 V',
//                 cCurrent: '52,14 A',
//                 cPower: '50,2 W',
//               ),
