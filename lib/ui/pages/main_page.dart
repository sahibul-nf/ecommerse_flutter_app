part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<Widget> destinations = [
    HomePage(),
    FavoritePage(),
    CartPage(),
    CheckOutPage(),
    UserPage(),
  ];

  int _currentIndex = 0;

  List<int> _badgeCounts = List<int>.generate(5, (index) => index);

  List<bool> _badgeShows = List<bool>.generate(5, (index) => true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: destinations[_currentIndex],
      bottomNavigationBar: btmNavBar(), 
    );
  }

  Widget btmNavBar() {
    return Container(
      margin: EdgeInsets.all(16),
      child: CustomNavigationBar(
        iconSize: 24.0,
        selectedColor: LightTheme.color1,
        strokeColor: LightTheme.color7,
        unSelectedColor: LightTheme.color6,
        backgroundColor: LightTheme.color8,
        borderRadius: Radius.circular(30),
        scaleFactor: 0.3,
        isFloating: true,
        items: [
          CustomNavigationBarItem(
            icon: Icon(UniconsLine.home_alt),
            badgeCount: _badgeCounts[0],
            showBadge: _badgeShows[0],
          ),
          CustomNavigationBarItem(
            icon: Icon(UniconsLine.heart),
            badgeCount: _badgeCounts[1],
            showBadge: _badgeShows[1],
          ),
          CustomNavigationBarItem(
            icon: Icon(UniconsLine.shopping_cart),
            badgeCount: _badgeCounts[2],
            showBadge: _badgeShows[2],
          ),
          CustomNavigationBarItem(
            icon: Icon(UniconsLine.comment),
            badgeCount: _badgeCounts[3],
            showBadge: _badgeShows[3],
          ),
          CustomNavigationBarItem(
            icon: Icon(UniconsLine.user),
            badgeCount: _badgeCounts[4],
            showBadge: _badgeShows[4],
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            _badgeShows[index] = false;
          });
        },
      ),
    );
  }
}
