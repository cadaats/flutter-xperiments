import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Accordion extends StatefulWidget {
  final String title;
  final String content;

  Accordion(this.title, this.content);
  @override
  State<StatefulWidget> createState() => _AccordionState();
}

class _AccordionState extends State<Accordion> {
  bool _showContent = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(children: [
        ListTile(
            title: Text(widget.title),
            trailing: Wrap(
              spacing: 12, // space between two icons
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    _showContent ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      _showContent = !_showContent;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.refresh,
                    color: Colors.lightBlue,
                  ),
                  onPressed: () async {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.lightBlue,
                  ),
                  onPressed: () async {},
                ),
              ],
            )),
        _showContent
            ? Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Text(widget.content),
              )
            : Container()
      ]),
    );
  }
}
