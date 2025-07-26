import 'package:flutter/material.dart';
import 'package:islamic/core/app_asset.dart';

class StackIslamic extends StatelessWidget {
  const StackIslamic({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppAsset.splashBackgroundTop,
          width: 291,
          height: 171,
        ),
        Image.asset(
          AppAsset.islami,
          width: 166,
          height: 96,
        )
      ],
    );
  }
}
