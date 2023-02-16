
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Route{
  void redirectHomepage(BuildContext context, Widget pagename) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => pagename,
        ),
            (route) => false);
  }

  void newPage(BuildContext context, Widget pagename) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => pagename,
        ),
            );
  }

}