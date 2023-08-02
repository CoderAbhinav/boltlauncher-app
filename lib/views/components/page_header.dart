import 'package:flutter/material.dart';

import '../../utils/size_utility.dart';

class PageHeaderWidget extends StatelessWidget {
  PageHeaderWidget({Key? key, this.prefix = const SizedBox(), this.title = const SizedBox(), this.canGoBack = false, this.suffix = const SizedBox()}) : super(key: key);
  Widget prefix = Container(), title = Container(), suffix;
  bool canGoBack;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            prefix,
            SizedBox(width: getHorizontalSize(8),),
            title
          ],
        ),


        canGoBack ?
        IconButton(onPressed: () { Navigator.pop(context);}, icon: Icon(Icons.close, color: Theme.of(context).textTheme.titleLarge!.color,)) : suffix
      ],
    );
  }
}