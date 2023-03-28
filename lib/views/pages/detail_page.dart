part of 'pages.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Widget headerImage() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 4,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/image_rs_1.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget contentPrimary() {
    return Padding(
      padding: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: 30,
      ),
      child: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height / 6,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Energy',
              style: greyTextStyleInter,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '1.500.000',
                  style: blackTextStyleInter.copyWith(
                    fontSize: 24,
                    fontWeight: bold,
                  ),
                ),
                Text(
                  ',000 KWh',
                  style: blackTextStyleInter.copyWith(
                    fontSize: 24,
                    fontWeight: light,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      'Voltage',
                      style: greyTextStyleInter,
                    ),
                    Text(
                      '18 V',
                      style: blackTextStyleInter,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Current',
                      style: greyTextStyleInter,
                    ),
                    Text(
                      '56,14 A',
                      style: blackTextStyleInter,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Power',
                      style: greyTextStyleInter,
                    ),
                    Text(
                      '56,2 W',
                      style: blackTextStyleInter,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget contentSecondary() {
    return Column(
      children: [
        Container(
          height: 2,
          width: double.infinity,
          color: Colors.grey.shade200,
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 4,
          padding:
              const EdgeInsets.only(left: defaultMargin, right: defaultMargin),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent Alert',
                    style: blackTextStyleInter,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_right_alt,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 5.5,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(bottom: 5),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: kSecondaryColor)),
                        child: Row(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet.',
                              style: blackTextStyleInter.copyWith(fontSize: 12),
                            ),
                            Text(
                              '07.20 - 04 November 2020.',
                              style: greyTextStyleInter.copyWith(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(bottom: 5),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: kSecondaryColor)),
                        child: Row(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet.',
                              style: blackTextStyleInter.copyWith(fontSize: 12),
                            ),
                            Text(
                              '07.20 - 04 November 2020.',
                              style: greyTextStyleInter.copyWith(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(bottom: 5),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: kSecondaryColor)),
                        child: Row(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet.',
                              style: blackTextStyleInter.copyWith(fontSize: 12),
                            ),
                            Text(
                              '07.20 - 04 November 2020.',
                              style: greyTextStyleInter.copyWith(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(5),
                        margin: const EdgeInsets.only(bottom: 5),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height / 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: kSecondaryColor)),
                        child: Row(
                          children: [
                            Text(
                              'Lorem ipsum dolor sit amet.',
                              style: blackTextStyleInter.copyWith(fontSize: 12),
                            ),
                            Text(
                              '07.20 - 04 November 2020.',
                              style: greyTextStyleInter.copyWith(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 2,
          width: double.infinity,
          color: Colors.grey.shade200,
        ),
      ],
    );
  }

  Widget contentThird() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height/3,
      child: MainPageChart(),
    );
  }

  Widget contentFourth() {
    return Container(
      margin: const EdgeInsets.only(
        left: defaultMargin,
        right: defaultMargin,
        top: defaultMargin,
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 4,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sensor Name',
                style: blackTextStyleInter.copyWith(
                  fontWeight: bold,
                ),
              ),
              Text(
                'Current Value',
                style: blackTextStyleInter,
              ),
            ],
          ),
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 4.5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'tm01',
                              style: blackTextStyleInter.copyWith(
                                  fontWeight: bold, fontSize: 12),
                            ),
                            Text(
                              '20.17',
                              style: blackTextStyleInter.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                        height: 10,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_circle_right,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              '20.17',
                              style: blackTextStyleInter.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'tm02',
                              style: blackTextStyleInter.copyWith(
                                  fontWeight: bold, fontSize: 12),
                            ),
                            Text(
                              '20.30',
                              style: blackTextStyleInter.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                        height: 10,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_circle_right,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              '20.30',
                              style: blackTextStyleInter.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'tm03',
                              style: blackTextStyleInter.copyWith(
                                  fontWeight: bold, fontSize: 12),
                            ),
                            Text(
                              '18.17',
                              style: blackTextStyleInter.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                        height: 10,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.arrow_circle_right,
                                color: Colors.blue,
                              ),
                            ),
                            Text(
                              '18.17',
                              style: blackTextStyleInter.copyWith(
                                fontSize: 12,
                                fontWeight: light,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Row(
          children: [
            const SizedBox(
              width: 50,
            ),
            Expanded(
              child: Text(
                'Operation Room 01',
                style: whiteTextStyleInter.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            headerImage(),
            contentPrimary(),
            contentSecondary(),
            contentThird(),
            contentFourth(),
          ],
        ),
      ),
    );
  }
}
