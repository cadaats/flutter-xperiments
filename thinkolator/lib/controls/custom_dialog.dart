import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertBox extends StatelessWidget {
  final title, description, errorType;
  IconData iconData = Icons.info;
  AlertBox(this.description, {this.title, this.errorType});

  @override
  Widget build(BuildContext context) {
    switch (errorType) {
      case 'error':
        iconData = Icons.error;
        break;
      case 'warning':
        iconData = Icons.warning;
        break;
    }
    return Dialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 200,
                width: 450,
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              iconData,
                              size: 30,
                              color: Colors.blue,
                            ),
                            SizedBox(width: 20.0),
                            Text(
                              this.title == null ? 'Hello' : this.title,
                              style: GoogleFonts.fingerPaint(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            description,
                            style: GoogleFonts.fingerPaint(fontSize: 20),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          RaisedButton(
                            color: Colors.white,
                            child: Text('Close me!'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              if (!kIsWeb)
                Positioned(
                  child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.flaky,
                      size: 40.0,
                    ),
                  ),
                  top: -30,
                )
            ]));
  }
}

class SimpleAlert extends StatelessWidget {
  final title, description;

  SimpleAlert(this.description, [this.title]);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: new Text(this.title == null ? 'Hello' : this.title),
      content: new Text(this.description),
      actions: <Widget>[
        FlatButton(
          child: Text('Close me!'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

class SimpleCustomAlert extends StatelessWidget {
  final title, description, errorType;

  IconData iconData = Icons.info;
  SimpleCustomAlert(this.description, {this.title, this.errorType});

  @override
  Widget build(BuildContext context) {
    switch (errorType) {
      case 'error':
        iconData = Icons.error;
        break;
      case 'warning':
        iconData = Icons.warning;
        break;
    }
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Container(
        height: 200,
        width: 450,
        child: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                ),
                child: Row(
                  children: [
                    Icon(
                      iconData,
                      size: 30,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      this.title == null ? 'Hello' : this.title,
                      style: GoogleFonts.fingerPaint(
                          color: Colors.white, fontSize: 20),
                    )
                  ],
                )),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15)),
                ),
                child: SizedBox.expand(
                    child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Text(
                        description,
                        style: GoogleFonts.fingerPaint(fontSize: 20),
                        textAlign: TextAlign.left,
                      ),
                      Spacer(),
                      RaisedButton(
                        color: Colors.white,
                        child: Text('Close me!'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
