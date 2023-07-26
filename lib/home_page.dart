import 'package:flutter/material.dart';
import 'package:rent_home/app_styles.dart';
import 'package:rent_home/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> categories = ['House', 'Apartment', 'Hotel', 'Villa'];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kPadding20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: kRalewayRegular.copyWith(
                        color: kGrey83,
                        fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 0.5,
                    ),
                    Row(
                      children: [
                        Text('Jakarta',
                            style: kRalewayMedium.copyWith(
                              color: kGrey83,
                              fontSize: SizeConfig.blockSizeHorizontal! * 5,
                            )),
                        SizedBox(width: SizeConfig.blockSizeHorizontal! * 0.5),
                        SvgPicture.asset('assets/icon_dropdown.svg'),
                      ],
                    )
                  ],
                ),
                SvgPicture.asset('assets/icon_notification_has_notif.svg'),
              ],
            ),
          ),
          const SizedBox(
            height: kPadding24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kPadding20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: kRalewayRegular.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: kPadding16,
                      ),
                      prefixIcon: SvgPicture.asset('assets/icon_search.svg'),
                      hintText: 'Search text',
                    ),
                  ),
                )
              ],
            ),
          )
        ]),
      )),
    );
  }
}
