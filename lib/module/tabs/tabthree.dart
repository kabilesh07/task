import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/module/constants/text.dart';
import '../controller/pagethreecontroller.dart';
import '../maintab/maintabthree.dart';

class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tpage3),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Initialize Page3Controller and fetch data
            Get.put(Page3Controller());
            // Navigate to Page3
            Get.to(
              Page3(
                items: Get.find<Page3Controller>().items.toList(),
                showCloseIcon: false,
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
      ),
    );
  }
}

