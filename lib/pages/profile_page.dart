import 'package:flutter/material.dart';
import 'dart:math';
import 'package:vanira/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class ScaleSize {
  static double textScaleFactor(BuildContext context, {double maxTextScaleFactor = 2}) {
    final width = MediaQuery.of(context).size.width;
    double val = (width / 1400) * maxTextScaleFactor;
    return max(1, min(val, maxTextScaleFactor));
  }
}

class _ProfilePageState extends State<ProfilePage> with AppMixin{
  @override
  Widget build(BuildContext context) {
    
    final double avatarSize = getScreenWidth(context) * 0.3;
    final double primaryIconSize = getScreenWidth(context) * 0.1;
    final double secondaryIconSize = getScreenWidth(context) * 0.1;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none, // overflow untuk circle
              children: [
                Container(
                  height: getScreenHeight(context) * 0.2,
                  color: Colors.amber,
                ),
                Positioned(
                  bottom: -50, // mengatur bagian circle yang berada di luar container
                  child: Container(
                    height: avatarSize,
                    width: avatarSize,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment(0.32, 1),
                        colors: <Color>[
                          Color(0xFF67A076),
                          Color(0xFFEEFFF2),
                        ], 
                      )
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: avatarSize * 0.6,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "@aryaaydin",
                      // style: TextStyle(
                      //   fontSize: getScreenWidth(context) * (14/getScreenWidth(context)),
                      // ),
                    ),
                    Text(
                      "Udin",
                      textScaler: TextScaler.linear(ScaleSize.textScaleFactor(context)),
                      // style: TextStyle(
                      //   fontSize: getScreenWidth(context) * (18/getScreenWidth(context)),
                      // ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.bookmark_rounded, 
                          color: secondaryIcon,
                          size: secondaryIconSize,
                        ),
                        SizedBox(width: secondaryIconSize * 0.5),
                        Icon(
                          Icons.settings, 
                          color: secondaryIcon,
                          size: secondaryIconSize,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}