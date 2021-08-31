part of 'pages.dart';

class GetStarted extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightTheme.color1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AvatarGlow(
              endRadius: 70,
              animate: true,
              glowColor: LightTheme.color2,
              child: Image.asset(
                'assets/logo_hi.png',
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              'Welcome to hishop',
              style: GoogleFonts.poppins(
                color: LightTheme.color7,
                fontSize: LightTheme.h2,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Get product with best \nquality and best service only \non this app and have \nenjoyed 😁',
              style: GoogleFonts.poppins(
                color: LightTheme.color7,
                fontSize: LightTheme.h6,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 70,
            ),
            MyButton(
              elevation: 0,
              border: Border.all(
                color: LightTheme.color1,
                width: 0,
              ),
              height: 45,
              width: 180,
              color: LightTheme.color7,
              txtColor: LightTheme.color1,
              text: 'Get Started',
              fontWeight: FontWeight.w500,
              splashColor: LightTheme.color2,
              widget: Icon(
                Icons.arrow_forward,
                size: LightTheme.h5,
                color: LightTheme.color1,
              ),
              onTaped: () {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  "/main",
                  (route) => false,
                );
              },
            ),
            SizedBox(
              height: 80,
            ),
          ],
        ),
      ),
    );
  }
}
