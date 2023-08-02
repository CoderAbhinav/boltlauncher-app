

import 'package:boltlauncher/models/BluetoothDevice.dart';
import 'package:flutter/cupertino.dart';

abstract class BluetoothConnectionHandler {

  Future<dynamic> enableBluetooth([BuildContext? context]);
  Future<List<BluetoothDeviceModel>> scanForDevices([BuildContext? context]);
  Future<dynamic> connectToDevice(BluetoothDeviceModel device, [BuildContext? context]);
}