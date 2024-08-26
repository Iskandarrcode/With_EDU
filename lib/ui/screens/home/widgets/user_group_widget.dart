import 'package:with_edu/data/models/groups/group.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/utils.dart';

class UserGroupWidget extends StatelessWidget {
  final int index;
  final Group group;

  const UserGroupWidget({
    super.key,
    required this.group,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: DeviceScreen.w(context) / 1.1,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: AppColors.darkShadeGreen,
        borderRadius: BorderRadius.circular(25),
      ),
      child: const Center(
        child: FlutterLogo(),
      ),
    );
  }
}
