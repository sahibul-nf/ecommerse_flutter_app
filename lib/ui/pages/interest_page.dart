part of 'pages.dart';

class InterestPage extends StatefulWidget {
  @override
  _InterestPageState createState() => _InterestPageState();
}

class _InterestPageState extends State<InterestPage> {
  onTapBtn() {
    return Navigator.of(context).pushNamed("/started");
  }

  List<String> listInterest = [];

  @override
  void initState() {
    super.initState();

    listInterest = [
      "Men Fashion",
      "Technology",
      "Food & Drink",
      "Women Fashion"
    ];
  }

  interest(String data) => Container(
        height: 70,
        width: 151,
        decoration: BoxDecoration(
            color: LightTheme.color8,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              style: BorderStyle.solid,
              color: LightTheme.color7,
            )),
        child: Center(
          child: Text(data),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Select your interest!",
                        style: GoogleFonts.poppins(
                          color: LightTheme.color5,
                          fontSize: LightTheme.h1,
                          fontWeight: FontWeight.w600,
                        ),
                        // textAlign: TextAlign.left,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Get product recomendations that match your interest. 😉",
                        style: GoogleFonts.poppins(
                          color: LightTheme.color6,
                          fontSize: LightTheme.h5,
                          fontWeight: FontWeight.w300,
                        ),
                        // textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(24, 30, 24, 0),
                    height: 470,
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: [
                        Container(
                          height: 10,
                          width: 151,
                          decoration: BoxDecoration(
                              color: LightTheme.color8,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                style: BorderStyle.solid,
                                color: LightTheme.color7,
                              )),
                          child: Center(
                            child: Text(listInterest[1]),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment(0, .9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      elevation: 0,
                      border: Border.all(
                        color: LightTheme.color6.withOpacity(0.6),
                      ),
                      height: 40,
                      txtColor: LightTheme.color6,
                      width: 70,
                      text: 'Skip',
                      fontWeight: FontWeight.w300,
                      splashColor: LightTheme.color8,
                      onTaped: () {
                        onTapBtn();
                      },
                    ),
                    MyButton(
                      elevation: 2,
                      border: Border.all(
                        color: LightTheme.color1,
                        width: 0,
                      ),
                      height: 40,
                      width: 70,
                      color: LightTheme.color1,
                      txtColor: LightTheme.color8,
                      text: 'Done',
                      fontWeight: FontWeight.w400,
                      splashColor: LightTheme.color1,
                      onTaped: () {
                        onTapBtn();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
