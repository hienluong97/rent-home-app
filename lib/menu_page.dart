import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_home/app_styles.dart';
import 'package:rent_home/size_config.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.only(
            top: SizeConfig.blockSizeVertical! * 1,
            left: 0,
            bottom: SizeConfig.blockSizeVertical! * 1,
            right: 10),
        color: kBlue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildMenuItem(context,
                item: NavigatorItem.home,
                text: 'Home',
                icon: 'assets/icon_home')
          ],
        ),
      ),
    );
  }
}

Widget buildMenuItem(
  BuildContext context, {
  required NavigatorItem item,
  required String text,
  required String icon,
}) {
  final provider = Provider.of<MenuProvider>(context);
  final currentItem = provider.navigationItem;
  final isSelected = item == currentItem;
  final color = isSelected ? kBlue : kWhite;
  final iconSvg = isSelected ? '$icon{_enable.svg}' : '$icon{_disable.svg}';
  SizeConfig().init(context);

  return GestureDetector(
    onTap: () => selectItem(context, item),
    child: AnimatedContainer(
      duration: Duration(microseconds: 100),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(kBorderRadius20),
            bottomRight: Radius.circular(kBorderRadius20),
          ),
          color: isSelected ? kWhite : null),
      height: SizeConfig.blockSizeVertical! * 5,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.blockSizeVertical! * 6,
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            SvgPicture.asset(iconSvg),
            SizedBox(
              width: SizeConfig.blockSizeHorizontal! * 4,
            )
          ],
        ),
      ),
    ),
  );
}

void selectItem(BuildContext context, navigationItem item) {
  final provider = Provider.of<MenuProvider>(context, listen: false);
  provider.setNavigator(item);
}

enum NavigatorItem {
  home,
  profile,
  nearby,
  bookmark,
  notification,
  message,
  setting,
  help,
  logout
}
