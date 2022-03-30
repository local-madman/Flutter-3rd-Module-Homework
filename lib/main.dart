import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/svg_listing.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<SvgPics> _svgList = <SvgPics>[
    SvgPics(name: SvgPics.deathName, image: SvgPics.death),
    SvgPics(name: SvgPics.moonName, image: SvgPics.moon),
    SvgPics(name: SvgPics.emperorName, image: SvgPics.emperor),
    SvgPics(name: SvgPics.hermitName, image: SvgPics.hermit)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Third module Homework', style: TextStyle(fontFamily: 'Fourth_Reign', fontSize: 30)),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider.builder(
                  itemCount: _svgList.length,
                  itemBuilder: (
                          (BuildContext context, int itemindex, int realIndex) {
                        return Column(
                          children: [
                            SvgPicture.asset(
                              _svgList[itemindex].image,
                              width: 300,
                              height: 300,
                            ),
                            Text(_svgList[itemindex].name,
                              style: TextStyle(fontFamily: 'Fourth_Reign', fontSize: 20),
                            )
                          ]
                        );
                      }
                  ),
                  options: CarouselOptions(
                      height: 400,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2)
                  )
              )
            ],
          )
        ),
      ),
    );
  }
}