import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'resources.dart';
import 'split.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<svgResources> _svgResources = <svgResources>[
    svgResources.pic(name: 'Death', image: SvgPics.death),
    svgResources.pic(name: 'Moon', image: SvgPics.moon),
    svgResources.pic(name: 'Hermit', image: SvgPics.hermit),
    svgResources.pic(name: 'Emperor', image: SvgPics.emperor)
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Third module Homework'),
        ),
        body: Center(
          child: Column(
            children: [
              CarouselSlider.builder(
                  itemCount: _svgResources.length,
                  itemBuilder: (
                          (BuildContext context, int itemindex, int realIndex) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              _svgResources[itemindex].image,
                              width: 300,
                              height: 350,
                            ),
                            Text(_svgResources[itemindex].name,
                                style: TextStyle(fontSize: 20))
                          ],
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