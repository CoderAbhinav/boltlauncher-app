
import 'package:boltlauncher/utils/size_utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';

import '../../models/BluetoothDevice.dart';

class BluetoothDeviceTile extends StatelessWidget {
  BluetoothDeviceModel device;
  Function? onConnectRequest;
  Function? onLongPress;
  BluetoothDeviceTile({Key? key, required this.device, this.onConnectRequest, this.onLongPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(all: 8),
      child: Container(
        width: getHorizontalSize(200),
        height: getVerticalSize(80),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Theme.of(context).primaryColor, width: 0.2)
        ),
        child: Padding(
          padding: getPadding(all: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Row(
              children: [
                // TODO: Implement logic for device state
                Icon(Icons.bluetooth_connected, color: Theme.of(context).primaryColor,),
                SizedBox(width: getHorizontalSize(16),),
                Text(device.localName ?? "NA", style: Theme.of(context).textTheme.titleMedium,)
              ],
            ),
              IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward, color: Theme.of(context).textTheme.titleMedium!.color,))
            ]
          ),
        ),
      ),
    );
  }
}
