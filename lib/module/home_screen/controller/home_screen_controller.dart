import 'package:flutter/material.dart';
import 'package:waves_food/core.dart';
import '../view/home_screen_view.dart';

class HomeScreenController extends State<HomeScreenView> {
  static late HomeScreenController instance;
  late HomeScreenView view;

  @override
  void initState() {
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
