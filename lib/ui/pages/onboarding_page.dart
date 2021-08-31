part of 'pages.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  List b = [];

  @override
  void initState() {
    super.initState();
    craete();
  }

  int i = 0;
  next() {
    if (i < 2) {
      i++;
    }
    else if (i == 2) {
      return Navigator.of(context).pushNamed("/started");
    }
  }

  skip() {
    // return i = 3;
    // return interest();
    return Navigator.of(context).pushNamed("/started");
  }

  @override
  Widget build(BuildContext context) {
    print(i);
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                color: LightTheme.color8,
                height: LightTheme.fullHeight(context),
                width: LightTheme.fullWidth(context),
                child: b[0 + i],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Align(
              alignment: Alignment(0, .9),
              child: (i < 3)
                  ? Row(
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
                              skip();
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
                          text: 'Next',
                          fontWeight: FontWeight.w400,
                          splashColor: LightTheme.color1,
                          onTaped: () {
                            setState(() {
                              next();
                            });
                          },
                        ),
                      ],
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }

  craete() {
    Widget a;
    b = new List();
    for (int i = 0; i < 3; i++) {
      if (i == 0) {
        a = component(
          'assets/shop.png',
          'Visit Your Dream Shop',
          'You can visit the shop of your \ndreams with just a mobile \nin your hand 😁',
        );
      } else if (i == 1) {
        a = component(
          'assets/shopp.png',
          'Best Quality Product',
          'Get best quality product with \nbest service on this app \nand have fun 😁',
        );
      } else if (i == 2) {
        a = component(
          'assets/pay.png',
          'Payment Gateway',
          'Now payment be easy \nwith payment gateway fitur \nand enjoyed 😁',
        );
      } 
      b.add(a);
    }

    return b;
  }

  component(String img, String title, String desc) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          img,
          width: 350,
          height: 300,
          fit: BoxFit.contain,
        ),
        Column(
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                color: LightTheme.color5,
                fontSize: LightTheme.h2,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              desc,
              style: GoogleFonts.poppins(
                color: LightTheme.color6,
                fontSize: LightTheme.h6,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ],
    );
  }

//   Widget interest() {
//     return Column(
//       children: [
//         Text("Select your interest!"),
//         Text("Get product recomendations that match your interest. 😉"),
//         // GridView.builder(
//         //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         //     crossAxisCount: 2,
//         //     mainAxisSpacing: 5,
//         //   ),
//         //   itemBuilder: (context, index) {
//         //     return Container();
//         //   },
//         // ),
//       ],
//     );
//   }
}
