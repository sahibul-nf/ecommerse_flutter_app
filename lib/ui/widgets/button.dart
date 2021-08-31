part of 'widgets.dart';

class MyButton extends StatefulWidget {
  final double elevation, width, height;
  final Color color, splashColor, txtColor;
  final BoxBorder border;
  final Function onTaped;
  final FontWeight fontWeight;
  final String text;
  final Widget widget;

  MyButton({
    this.text,
    this.elevation,
    this.color,
    this.width,
    this.border,
    this.txtColor,
    this.fontWeight = FontWeight.w400,
    this.onTaped,
    this.splashColor,
    this.height = 45,
    this.widget = const Text(''),
  });

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: this.widget.elevation,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: this.widget.height,
        width: this.widget.width,
        decoration: BoxDecoration(
          border: this.widget.border,
          color: this.widget.color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: BorderRadius.circular(8),
            splashColor: this.widget.splashColor,
            onTap: this.widget.onTaped,
            child: Row (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.widget.text,
                  style: GoogleFonts.poppins(
                    color: this.widget.txtColor,
                    fontSize: LightTheme.h6,
                    fontWeight: this.widget.fontWeight,
                  ),
                  textAlign: TextAlign.center,
                ),
                this.widget.widget
              ],
            )
          ),
        ),
      ),
    );
  }
}
