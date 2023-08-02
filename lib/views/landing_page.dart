

import 'package:boltlauncher/utils/size_utility.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'components/button_components.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _pageIndex = 0;

  final List _illList = [
    {
      "image": "assets/landing_page_illustartion/undraw_gaming_re_cma2.svg",
      "title": "Control You Ballista",
      "desc":
      "The BoltLauncher controls your ballista over bluetooth giving you precise control over the device."
    },
    {
      "image": "assets/landing_page_illustartion/undraw_growing_re_olpi.svg",
      "title": "Track you performance",
      "desc":
      "Use the app's inbuilt tracking to check your performance"
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: getVerticalSize(80),
          ),
          CarouselSlider(
            options: CarouselOptions(
                height: getVerticalSize(500),
                viewportFraction: 1,
                enableInfiniteScroll: false,
                autoPlay: true,
                onPageChanged: (x, r) {
                  setState(() {
                    _pageIndex = x;
                  });
                },
                onScrolled: (x) {
                  if (x == null) {
                    return;
                  }
                  if ((x.toInt() + 1) % _illList.length != _pageIndex) {
                    setState(() {
                      _pageIndex = x.toInt();
                    });
                  }
                }),
            items: _illList.map((e) {
              return Builder(builder: (BuildContext context) {
                return Padding(
                  padding: const EdgeInsets.all(23),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: getHorizontalSize(320),
                          height: getVerticalSize(234),
                          child: Center(
                            child: SvgPicture.asset(
                            e["image"],
                              width: getHorizontalSize(320),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: getVerticalSize(70),
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 46,
                            child: Text("${e["title"]}",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleLarge)),
                        const SizedBox(
                          height: 16,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width - 96,
                            child: Text(
                              "${e["desc"]}",
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.labelMedium,
                            )),
                      ],
                    ),
                  ),
                );
              });
            }).toList(),
          ),
          CarouselIndicator(
            animationDuration: 100,
            color: const Color(0xff6E80B0),
            activeColor: Theme.of(context).primaryColor,
            count: _illList.length,
            index: _pageIndex,
            width: 10,
            height: 10,
            space: 12,
          ),
          const SizedBox(
            height: 40,
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            child: AppFilledButton(
              width: getHorizontalSize(324),
              height: getVerticalSize(64),
              borderRadius: 20,
              child: Center(
                  child: Text(
                    "Next",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .apply(color: Colors.white),
                  )),
            ),
          )
        ],
      ),
    );
  }
}