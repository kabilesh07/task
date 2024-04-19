import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constants/text.dart';
import '../maintab/maintabtwo.dart';


class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ttab1),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(Page2());
          },
          child: Text(tpage2),
          style: ElevatedButton.styleFrom(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0), // Set the border radius to 0 for sharp corners
            ),
            side: BorderSide(color: Colors.black), // Set the border color
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24), // Set padding
            primary: Colors.black, // Set background color
            onPrimary: Colors.white, // Set text color
          ),
        ),
      ),
    );
  }
}
