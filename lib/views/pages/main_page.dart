part of 'pages.dart';

class MainPage extends StatefulWidget {
  final int initialPage;
  const MainPage({
    super.key,
    this.initialPage = 0,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _selectedPage = widget.initialPage;
    _pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: Scaffold(
        backgroundColor: kFourthColor,
        body: Stack(
          children: [
            SafeArea(
              child: PageView(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _selectedPage = index;
                  });
                },
                children: [
                  Center(
                    child: Text('Home'),
                  ),
                  Center(
                    child: Text('Warning'),
                  ),
                  Center(
                    child: Text('Critical'),
                  ),
                  // Center(
                  //   child: HomePageCsa(),
                  // ),
                  // Center(
                  //   child: TransactionPageCsa(),
                  // ),
                  // Center(
                  //   child: AddPelangganPageCsa(),
                  // ),
                  // Center(
                  //   child: CekNomorResiPageCsa(),
                  // ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: CustomBottomNavigation(
                selectedIndex: _selectedPage,
                onTap: (index) {
                  setState(() {
                    _selectedPage = index;
                  });
                  _pageController.jumpToPage(_selectedPage);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
