import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class Page3Controller extends GetxController {
  var items = <String>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchItems();
  }

  Future<void> fetchItems() async {
    try {
      String jsonString = await rootBundle.loadString('assets/page3.json');
      Map<String, dynamic> jsonData = json.decode(jsonString);
      List<dynamic> itemList = jsonData['page3'];
      items.assignAll(itemList.map((item) => item.toString()).toList());
    } catch (error) {
      print('Error loading JSON data: $error');
    } finally {
      isLoading.value = false;
    }
  }
}
