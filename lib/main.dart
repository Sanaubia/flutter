import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('images/janne.jpg'),
              ),
              Text(
                'Janne Prokkola',
                style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white60,
                  fontFamily: 'fonts/SourceSansPro-Light.ttf',
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                color: Colors.grey.shade700,
                endIndent: 100.0,
                height: 40.0,
                indent: 100.0,
                thickness: 2.0,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.grey.shade700,
                  ),
                  title: Text(
                    '+358 50 1234 567',
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: 'fonts/SourceSansPro-Light.ttf',
                        fontSize: 20),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.grey.shade700,
                  ),
                  title: Text(
                    'janne_flutter@gmail.com',
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontFamily: 'fonts/SourceSansPro-Light.ttf',
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
