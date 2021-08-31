part of 'pages.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  Future startTime() async {
    return Timer(Duration(seconds: 7), doneTime);
  }

  doneTime() {
    return Navigator.pushReplacementNamed(context, '/onboarding');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightTheme.color1,
      body: Center(
        child: AvatarGlow(
          endRadius: 100,
          animate: true,
          glowColor: LightTheme.color2,
          child: Image.asset('assets/logo_hi.png'),
        ),
      ),
    );
  }
}
