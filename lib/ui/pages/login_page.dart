part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _keyForm = GlobalKey<FormState>();

  bool securer = false;
  Icon iconSecure =
      Icon(Icons.visibility, color: LightTheme.color6.withOpacity(0.3));

  String usernameN, passwordN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightTheme.color1,
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: LightTheme.color1,
          toolbarHeight: 80,
          elevation: 0,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: SafeArea(
              child: Image.asset(
                'assets/logo_hi.png',
                height: 50,
              ),
            ),
          )),
      body: Form(
        key: _keyForm,
        child: Container(
          padding: EdgeInsets.fromLTRB(24, 70, 24, 0),
          decoration: BoxDecoration(
              color: LightTheme.color7,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30), topLeft: Radius.circular(30))),
          child: ListView(
            children: [
              Text('Welcome \nBack Explorer!',
                  style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.normal,
                      color: Colors.black87)),
              SizedBox(
                height: 54,
              ),
              form(
                txtLabel: 'Username',
                txtHint: 'Your username',
                obsecureTxt: false,
                validator: (value) =>
                    (value.isEmpty) ? 'Please fill your username' : null,
                onSaved: (value) => usernameN = value,
                pfxIcon: Icon(
                  // OMIcons.accountCircle,
                  Icons.account_circle,
                  color: LightTheme.color1,
                ),
              ),
              form(
                txtLabel: 'Password',
                txtHint: 'Your password',
                obsecureTxt: securer,
                validator: (value) =>
                    (value.isEmpty) ? 'Please fill your password' : null,
                onSaved: (value) => passwordN = value,
                onTaped: () {
                  if (securer == true) {
                    setState(() {
                      securer = false;
                      iconSecure = Icon(
                        Icons.visibility_off,
                        color: LightTheme.color6.withOpacity(0.3),
                      );
                    });
                  } else {
                    setState(() {
                      securer = true;
                      iconSecure = Icon(
                        Icons.visibility,
                        color: LightTheme.color6.withOpacity(0.3),
                      );
                    });
                  }
                },
                pfxIcon: Icon(
                  // OMIcons.accountCircle,
                  Icons.lock,
                  color: LightTheme.color1,
                ),
                sfxIcon: Icon(
                  Icons.visibility,
                  color: LightTheme.color6.withOpacity(0.3),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 8),
                child: Text(
                  'Forgot password?',
                  style: GoogleFonts.sourceSansPro(
                    fontSize: LightTheme.h6,
                    fontWeight: FontWeight.w300,
                    color: LightTheme.color6,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 40,
                  bottom: 70,
                ),
                child: Center(
                  child: FloatingActionButton(
                      elevation: 0,
                      backgroundColor: LightTheme.color5,
                      splashColor: Colors.deepPurple[200],
                      child: Icon(Icons.arrow_forward),
                      onPressed: () {
                        setState(() {
                          // checkForm();
                        });
                      },),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Start fresh now? ',
                    style: GoogleFonts.sourceSansPro(
                      fontWeight: FontWeight.w300,
                      fontSize: LightTheme.h6,
                      color: LightTheme.color6,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.sourceSansPro(
                        fontWeight: FontWeight.w400,
                        fontSize: LightTheme.h6,
                        color: LightTheme.color1,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  form({
    String Function(String) validator,
    String txtLabel,
    String txtHint,
    Widget sfxIcon,
    Widget pfxIcon,
    bool obsecureTxt,
    void Function() onTaped,
    void Function(String) onSaved,
  }) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: TextFormField(
        // controller: passwordC,
        validator: validator,
        onSaved: onSaved,
        onTap: onTaped,
        obscureText: obsecureTxt,
        cursorColor: LightTheme.color6.withOpacity(0.3),
        style: GoogleFonts.sourceSansPro(
            color: LightTheme.color1, decoration: TextDecoration.none),
        decoration: InputDecoration(
          suffixIcon: sfxIcon,
          prefixIcon: pfxIcon,
          hintText: txtHint,
          hintStyle: GoogleFonts.sourceSansPro(
            color: LightTheme.color6.withOpacity(0.5),
          ),
          labelText: txtLabel,
          labelStyle: TextStyle(
            color: LightTheme.color6.withOpacity(0.5),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.pink),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: Colors.pink),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: LightTheme.color6.withOpacity(0.3),
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2,
              color: LightTheme.color1,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
