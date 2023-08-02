import 'package:boltlauncher/controllers/app_controller.dart';
import 'package:boltlauncher/utils/size_utility.dart';
import 'package:boltlauncher/views/components/page_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';

class RemoteController extends StatefulWidget {
  const RemoteController({Key? key}) : super(key: key);

  @override
  State<RemoteController> createState() => _RemoteControllerState();
}

class _RemoteControllerState extends State<RemoteController> {
  final ApplicationLogicController _controller =
      Get.find<ApplicationLogicController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: getPadding(all: 23),
        child: Column(
          children: [
            PageHeaderWidget(
              title: Text(
                "Controller",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              suffix: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Theme.of(context).textTheme.titleLarge!.color,
                ),
                onPressed: () {

                },
              ),
            ),
            // const Row(
            //   children: [
            //     // TODO: Add device status information
            //   ],
            // ),
            SimpleShadow(
              opacity: 0.6,
              color: Theme.of(context).primaryColor,
              offset: Offset(0, 0),
              sigma: 7,
              child: Container(
                height: getHorizontalSize(282),
                width: getHorizontalSize(282),
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: () {
                          _controller.handleControllerOperation(
                              ControllerOperation.moveUp);
                        },
                        child: SvgPicture.asset(
                            "assets/dial_components/button_up.svg")),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                            onTap: () {
                              _controller.handleControllerOperation(
                                  ControllerOperation.moveLeft);
                            },
                            child: SvgPicture.asset(
                                "assets/dial_components/button_left.svg")),
                        SizedBox(
                          width: getHorizontalSize(10),
                        ),
                        GestureDetector(
                            onTap: () {
                              _controller.handleControllerOperation(
                                  ControllerOperation.trigger);
                            },
                            child: SvgPicture.asset(
                                "assets/dial_components/button_trigger.svg")),
                        SizedBox(
                          width: getHorizontalSize(10),
                        ),
                        GestureDetector(
                          onTap: () {
                            _controller.handleControllerOperation(
                                ControllerOperation.moveRight);
                          },
                          child: SvgPicture.asset(
                              "assets/dial_components/button_right.svg"),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          _controller.handleControllerOperation(
                              ControllerOperation.moveDown);
                        },
                        child: SvgPicture.asset(
                            "assets/dial_components/button_down.svg")),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
