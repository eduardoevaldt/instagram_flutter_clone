import 'package:flutter/material.dart';
import 'package:instagram_clone/screens/root_screen.dart';
import 'package:instagram_clone/theme/colors.dart';

void main() {
  runApp(const InstragramClone());
}

class InstragramClone extends StatelessWidget {
  const InstragramClone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,
      color: black,
      theme: ThemeData.light(),
      home: const RootApp(),
    );
  }
}
