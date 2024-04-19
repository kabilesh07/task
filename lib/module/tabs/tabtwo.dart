import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hogr/module/constants/text.dart';
import '../controller/pagethreecontroller.dart';
import '../maintab/maintabthree.dart';

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ttab2),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Get.put(Page3Controller());

                Get.to(
                  Page3(
                    items: [],
                    fromTab2: true,
                    showCloseIcon: true,
                  ),
                );
              },
              child: Text(tpage3),
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
          ],
        ),
      ),
    );
  }
}
