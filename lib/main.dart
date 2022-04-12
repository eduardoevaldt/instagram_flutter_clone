import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/root_screen.dart';
import 'package:instagram_clone/theme/colors.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      color: black,
      theme: ThemeData.light(),
      home: const RootApp(),
    ),
  );
}
