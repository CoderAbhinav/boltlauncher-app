
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

class BluetoothDeviceModel {
  dynamic _originalData;
  String? _localName;


  BluetoothDeviceModel([originalData, localName]) {
    _originalData = originalData;
    _localName = localName;
  }

  String? get localName => _localName;

  dynamic get originalData => _originalData;

  @override
  String toString() {
    return 'BluetoothDeviceModel{_originalData: $_originalData, _localName: $_localName}';
  }
}