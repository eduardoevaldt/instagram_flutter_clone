// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:instagram_clone/theme/colors.dart';

class Story extends StatelessWidget {
  final String? img;
  final String? name;
  const Story({Key? key, this.img, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 6),
      child: Column(
        children: [
          Container(
            width: 68,
            height: 68,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: storyBorderColor,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
              child: Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: white,
                    width: 3,
                  ),
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(img!),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            width: 60,
            child: Center(
              child: Text(
                name!,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 12,
                  color: black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
