import 'package:fhe_template/module/05_apps/main/lib_articale/shared/colors.dart';
import 'package:flutter/material.dart';

class DrawerProfile extends StatelessWidget {
  const DrawerProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          foregroundImage: AssetImage('assets/images/profile_pic_1.png'),
          radius: 30,
        ),
        SizedBox(width: 25),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Jacob G. Reed',
              style: TextStyle(
                  color: whiteColor, fontWeight: FontWeight.w700, fontSize: 11),
            ),
            Text(
              '37k followers',
              style: TextStyle(color: whiteColor, fontSize: 10),
            )
          ],
        )
      ],
    );
  }
}
