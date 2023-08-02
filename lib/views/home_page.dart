import 'package:boltlauncher/controllers/app_controller.dart';
import 'package:boltlauncher/utils/size_utility.dart';
import 'package:boltlauncher/views/components/device_tile.dart';
import 'package:boltlauncher/views/components/page_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final ApplicationLogicController _controller = Get.find<ApplicationLogicController>();

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
                  "Select Device",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                suffix: IconButton(
                  icon: Icon(Icons.refresh, color: Theme.of(context).textTheme.titleLarge!.color,),
                  onPressed: () {
                    _controller.handleScanDevice();
                  },
                ),
              ),

              Expanded(
                child: ListView.builder(
                    itemCount: _controller.nearByDevice.value.length,
                    itemBuilder: (context, index) {
                      return BluetoothDeviceTile(
                        device: _controller.nearByDevice.value[index],
                        onLongPress: () {
                          // TODO: Implement long press
                        },
                        onConnectRequest: () {
                          // TODO: Implement on connect request
                        },
                      );
                    }),
              )
              // ElevatedButton(onPressed: () {
              //   Get.toNamed('/remote_control');
              // }, child: Text("Click Me To Scan"))
            ],
          ),
        ),
      ),
    );
  }
}
