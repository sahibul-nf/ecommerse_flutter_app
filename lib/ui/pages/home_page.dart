part of 'pages.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              IconButton(icon: Icon(LineIcons.align_center), onPressed: null),
              IconButton(icon: Transform.rotate(
                angle: 190,
                child: Icon(LineIcons.search),), onPressed: null),
            ],                      
          ),
        ],
      ),
    );
  }
}