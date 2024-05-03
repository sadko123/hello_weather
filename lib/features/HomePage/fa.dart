import 'package:flutter/material.dart';
import 'weatherContainerRightNow.dart';
import 'weatherContainerThisWeek.dart';
import 'weatherContainerTonight.dart';

Widget adae(){
  final controller = PageController(
    initialPage: 1,
  );
  return PageView(
    controller: controller,
    children: [
      weatherConteinerRightNow('Омск'),
      weatherConteinerTonight('Омск'),
      weatherConteinerThisWeek('Омск'),
    ],
  );
}