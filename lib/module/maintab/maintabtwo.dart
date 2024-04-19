import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/pagethreecontroller.dart';
import 'maintabthree.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PAGE 2'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.put(Page3Controller());

            Get.to(
              const Page3(
                items: [],
                showCloseIcon: true,
              ),
            ); // Open Page 3 with back button
          },
          child: const Text('PAGE 3'),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.black, elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0), // Set the border radius to 0 for sharp corners
            ),
            side: const BorderSide(color: Colors.black), // Set the border color
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24), // Set text color
          ),
        ),
      ),
    );
  }
}
