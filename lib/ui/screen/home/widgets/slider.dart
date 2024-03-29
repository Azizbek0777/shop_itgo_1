import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shop_itgo_1/core/utils/app_color.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  PageController _pageController = PageController(initialPage: 1);
  int _currentIndex = 1;
  List<String> _images = [
    'assets/png/slider.png',
    'assets/png/slider.png',
    'assets/png/slider.png',
    'assets/png/slider.png',
    'assets/png/slider.png',
    'assets/png/slider.png',
    'assets/png/slider.png',
    'assets/png/slider.png',
  ];
  Timer _timer;

  @override
  void initState() {
    print(_images.asMap());
    if (_images.length > 0) {
      _setTimer();
    }
    super.initState();
  }

  _setTimer() {
    _timer = Timer.periodic(Duration(seconds: 3), (_) {
      _pageController.animateToPage(
        _currentIndex + 1,
        duration: Duration(milliseconds: 400),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    List addedImages = [];
    if (_images.length > 0) {
      addedImages
        ..add(_images[_images.length - 1])
        ..addAll(_images)
        ..add(_images[0]);
    }
    return AspectRatio(
      aspectRatio: 14 / 7,
      child: Stack(
        children: [
          NotificationListener(
            onNotification: (ScrollNotification notification) {
              if (notification.depth == 0 &&
                  notification is ScrollStartNotification) {
                if (notification.dragDetails != null) {
                  _timer.cancel();
                }
              } else if (notification is ScrollEndNotification) {
                _timer.cancel();
                _setTimer();
              }
              return true;
            },
            child: _images.length > 0
                ? PageView(
                    physics: BouncingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (page) {
                      int newIndex;
                      if (page == addedImages.length - 1) {
                        newIndex = 1;
                        _pageController.jumpToPage(newIndex);
                      } else if (page == 0) {
                        newIndex = addedImages.length - 2;
                        _pageController.jumpToPage(newIndex);
                      } else {
                        newIndex = page;
                      }
                      setState(() {
                        _currentIndex = newIndex;
                      });
                    },
                    children: addedImages
                        .map((item) => Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(19),
                                child: Image.asset(
                                  item,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ))
                        .toList(),
                  )
                : Container(),
          ),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: _images
                  .asMap()
                  .map((i, v) => MapEntry(
                      i,
                      Container(
                        width: 6,
                        height: 6,
                        margin: EdgeInsets.only(left: 2, right: 2),
                        decoration: ShapeDecoration(
                          color: _currentIndex == i + 1
                              ? AppColor.black1
                              : AppColor.grey4,
                          shape: CircleBorder(),
                        ),
                      )))
                  .values
                  .toList(),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
