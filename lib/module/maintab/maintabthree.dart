import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/pagethreecontroller.dart';

class Page3 extends StatelessWidget {
  final List<String> items;
  final bool showCloseIcon;
  final bool fromTab2;

  const Page3({super.key, required this.items, this.fromTab2 = false, required this.showCloseIcon}); // Default values

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 3'),
        leading: fromTab2
            ? GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(Icons.close),
              )
            : GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Icon(Icons.arrow_back_ios),
              ),
      ),
      body: GetBuilder<Page3Controller>(
        init: Page3Controller(),
        builder: (controller) {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return ListView.builder(
              itemCount: controller.items.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10), // Add margin for spacing between items
                  decoration: BoxDecoration(
                    color: Colors.blueAccent, // Background color of the box
                    borderRadius: BorderRadius.circular(10), // Border radius of the box
                  ),
                  child: ListTile(
                    title: Text(controller.items[index]),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
