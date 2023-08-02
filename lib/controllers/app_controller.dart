import 'dart:developer' as developer;
import 'dart:math';
import 'dart:ui';

import 'package:boltlauncher/models/BluetoothDevice.dart';
import 'package:boltlauncher/services/blutooth_connection_handler.dart';
import 'package:boltlauncher/services/service_implementations/flutter_blue_implementation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:bluetooth_enable_fork/bluetooth_enable_fork.dart';

var _loadingWidget = const Center(
  child: CircularProgressIndicator.adaptive(),
);

enum ControllerOperation {
  moveUp,
  moveDown,
  moveLeft,
  moveRight,
  stretch,
  loosen,
  trigger
}

class ApplicationLogicController extends GetxController {
  BluetoothConnectionHandler _connectionHandler = FlutterBlueImplementation();
  Rx<List> nearByDevice = Rx([]);
  Rx<bool> isScanning = Rx(false);

  void handleControllerOperation(ControllerOperation moveUp) {}

  void handleBluetoothEnableOperation() {
    _connectionHandler.enableBluetooth();
  }

  void handleScanDevice() async {
    await Get.showOverlay(
        asyncFunction: () async {
          var res = await _connectionHandler.scanForDevices();
          nearByDevice(res);
        },
        loadingWidget: _loadingWidget);
  }

  void handleConnectToDevice(BluetoothDeviceModel device) async {
    await Get.showOverlay(
        asyncFunction: () async {
        }, loadingWidget: _loadingWidget);
  }
}
