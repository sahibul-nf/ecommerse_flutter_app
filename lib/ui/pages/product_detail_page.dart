part of 'pages.dart';

class ProductDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }

  Widget draggable() {
    return DraggableScrollableSheet(
      initialChildSize: .30,
      minChildSize: .30,
      maxChildSize: .9,
      builder: (context, scrollController) {
        return Container();
      },
    );
  }
}