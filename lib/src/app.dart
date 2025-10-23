import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class Aevora extends StatelessWidget {
  const Aevora({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Aevora',
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
    );
  }
}
