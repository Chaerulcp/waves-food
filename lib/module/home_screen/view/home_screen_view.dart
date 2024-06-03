import 'package:flutter/material.dart';
import 'package:waves_food/core.dart';
import '../controller/home_screen_controller.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({Key? key}) : super(key: key);

  Widget build(context, HomeScreenController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomeScreen"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<HomeScreenView> createState() => HomeScreenController();
}
