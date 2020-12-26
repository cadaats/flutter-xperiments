import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'controls/custom_shape_clipper.dart';
import 'controls/custom_dialog.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({key: Key, title: Title});

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          HomeScreenTop(),
        ],
      ),
    );
  }
}

class HomeScreenTop extends StatefulWidget {
  @override
  _HomeScreenTopState createState() => _HomeScreenTopState();
}

class _HomeScreenTopState extends State<HomeScreenTop> {
  var windowHeight = 800.0;
  var windowWidth = 500.0;
  final Gradient gradient = LinearGradient(colors: [
    Colors.red,
    Colors.red[300],
    Colors.pink[300],
    Colors.pink[200]
  ]);
  @override
  Widget build(BuildContext context) {
    windowWidth = MediaQuery.of(context).size.width;
    windowHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            width: windowWidth,
            height: windowHeight * 0.30,
            decoration: BoxDecoration(gradient: gradient),
            child: Column(
              children: <Widget>[
                SizedBox(height: 5),
                Row(
                  children: [
                    Spacer(),
                    IconButton(
                        icon: Icon(Icons.settings),
                        onPressed: () => {},
                        color: Colors.white,
                        iconSize: 30.0),
                  ],
                ),
                Text('Thinkolator................ \u221E',
                    style: GoogleFonts.fingerPaint(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 3.0)),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: windowWidth * 0.10, vertical: 10.0),
                  child: Material(
                    elevation: 5,
                    borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    child: TextField(
                      controller: TextEditingController(),
                      onSubmitted: (value) => {
                        showDialog(
                          context: context,
                          builder: (context) => AlertBox(
                            value,
                            errorType: 'error',
                          ),
                        )
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 13),
                        prefixIcon: Material(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          child: Icon(Icons.search_rounded),
                        ),
                        suffixIcon: Material(
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                          child: Tooltip(
                            message: 'Search by voice',
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.mic_rounded),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    RaisedButton(
                      color: Colors.transparent.withOpacity(0.10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100.0)),
                      elevation: 10.0,
                      onPressed: () {},
                      child: Text(
                        "GO",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            letterSpacing: 2.0),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
