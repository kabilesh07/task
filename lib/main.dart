import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'module/maintab/maintab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.black,
        ),
      ),
      home: MainTabView(),
    );
  }
}
