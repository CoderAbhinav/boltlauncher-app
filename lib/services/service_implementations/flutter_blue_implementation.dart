import 'dart:io';
import 'dart:developer' as developer;
import 'package:boltlauncher/models/BluetoothDevice.dart';
import 'package:boltlauncher/services/blutooth_connection_handler.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class FlutterBlueImplementation implements BluetoothConnectionHandler {



  @override
  Future enableBluetooth([BuildContext? context]) async {
    // check availability
    if (await FlutterBluePlus.isAvailable == false) {
      print("Bluetooth not supported by this device");
      return;
    }

    // turn on bluetooth ourself if we can
    if (Platform.isAndroid) {
      await FlutterBluePlus.turnOn();
    }

    // wait bluetooth to be on
    await FlutterBluePlus.adapterState
        .where((s) => s == BluetoothAdapterState.on)
        .first;
  }

  @override
  Future<List<BluetoothDeviceModel>> scanForDevices([BuildContext? context]) async {

    // Setup Listener for scan results
    // device not found? see "Common Problems" in the README

    List<BluetoothDeviceModel> _result = [];

    var subscription = FlutterBluePlus.scanResults.listen((results) {
      _result = results.map((e) => BluetoothDeviceModel(e.device, e.device.localName)).toList();

      for (ScanResult r in results) {
      }
    });

    // Start scanning
    await FlutterBluePlus.startScan(timeout: Duration(seconds: 10));

    // Stop scanning
    await FlutterBluePlus.stopScan();

    return _result;
  }

  FlutterBlueImplementation() {
    FlutterBluePlus.setLogLevel(LogLevel.verbose);
  }

  @override
  Future connectToDevice(BluetoothDeviceModel device, [BuildContext? context]) {
    // TODO: implement connectToDevice
    throw UnimplementedError();
  }

}
