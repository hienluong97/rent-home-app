import 'package:flutter/material.dart';
import 'package:rent_home/app_styles.dart';
import 'package:rent_home/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:rent_home/product_detail_page.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> categories = [
    'House',
    'Apartment',
    'Hotel',
    'Villa',
    'President'
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: kPadding20, vertical: kPadding20),
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
                          SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 0.5),
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
              padding: const EdgeInsets.symmetric(horizontal: kPadding20),
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
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: kPadding16,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SvgPicture.asset('assets/icon_search.svg'),
                          ),
                          hintText: 'Search address, or near you',
                          border: kInputBorder,
                          errorBorder: kInputBorder,
                          disabledBorder: kInputBorder,
                          focusedBorder: kInputBorder,
                          enabledBorder: kInputBorder,
                          hintStyle: kRalewayRegular.copyWith(
                            color: kGrey85,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3,
                          ),
                          filled: true,
                          fillColor: kWhite),
                    ),
                  ),
                  SizedBox(
                    width: SizeConfig.blockSizeHorizontal! * 4,
                  ),
                  Container(
                    height: 49,
                    width: 49,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius10),
                      gradient: kLinearGradientBlue,
                    ),
                    child: SvgPicture.asset('assets/icon_filter.svg'),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            SizedBox(
              width: double.infinity,
              height: 34,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: categories.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: index == 0 ? kPadding20 : 12,
                            right: index == categories.length - 1
                                ? kPadding20
                                : 0),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        height: 34,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: const Offset(0, 18),
                              blurRadius: 18,
                              color: current == index
                                  ? kBlue.withOpacity(0.1)
                                  : kBlue.withOpacity(0),
                            )
                          ],
                          gradient: current == index
                              ? kLinearGradientBlue
                              : kLinearGradientWhite,
                          borderRadius: BorderRadius.circular(kBorderRadius10),
                        ),
                        child: Center(
                            child: Text(
                          categories[index],
                          style: kRalewayMedium.copyWith(
                            color: current == index ? kWhite : kGrey85,
                          ),
                        )),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Near from you',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  Text(
                    'see more',
                    style: kRalewayRegular.copyWith(
                      color: kGrey85,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            SizedBox(
              height: 272,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (() => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) =>
                                    const ProductDetailPage()),
                              ),
                            )
                          }),
                      child: Container(
                        height: 272,
                        width: 222,
                        margin: EdgeInsets.only(
                          left: kPadding20,
                          right: index == 5 - 1 ? kPadding20 : 0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 0,
                                offset: const Offset(0, 18),
                                blurRadius: 18,
                                color: kBlack.withOpacity(0.1))
                          ],
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://mod-movers.com/wp-content/uploads/2020/06/webaliser-_TPTXZd9mOo-unsplash-scaled-e1591134904605.jpg',
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 136,
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft:
                                        Radius.circular(kBorderRadius20),
                                    bottomRight:
                                        Radius.circular(kBorderRadius20),
                                  ),
                                  gradient: kLinearGradientBlack,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: kPadding16,
                                    vertical: kPadding20),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      kBorderRadius10),
                                              color: kBlack.withOpacity(0.24),
                                            ),
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: kPadding8,
                                                vertical: kPadding4),
                                            child: Row(
                                              children: [
                                                SvgPicture.asset(
                                                    'assets/icon_pinpoint.svg'),
                                                const SizedBox(
                                                  width: kPadding4,
                                                ),
                                                Text(
                                                  '1.8 km',
                                                  style:
                                                      kRalewayMedium.copyWith(
                                                    color: kWhite,
                                                    fontSize: SizeConfig
                                                            .blockSizeHorizontal! *
                                                        2,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Dreamsville House',
                                            style: kRalewayMedium.copyWith(
                                              color: kWhite,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  4,
                                            ),
                                          ),
                                          Text(
                                            'Jl. Sultan Iskandar Muda',
                                            style: kRalewayMedium.copyWith(
                                              color: kWhite,
                                              fontSize: SizeConfig
                                                      .blockSizeHorizontal! *
                                                  3,
                                            ),
                                          ),
                                        ],
                                      )
                                    ]),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Best for you',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  ),
                  Text(
                    'see more',
                    style: kRalewayRegular.copyWith(
                      color: kGrey85,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: kPadding24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kPadding20),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: ((context, index) {
                  return Container(
                    height: 70,
                    margin: const EdgeInsets.only(
                      bottom: kPadding24,
                    ),
                    child: Row(children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(kBorderRadius10),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 0,
                              offset: const Offset(0, 18),
                              blurRadius: 18,
                              color: kBlack.withOpacity(0.1),
                            )
                          ],
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://mod-movers.com/wp-content/uploads/2020/06/webaliser-_TPTXZd9mOo-unsplash-scaled-e1591134904605.jpg',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: kPadding16,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Orchad House',
                              style: kRalewayMedium.copyWith(
                                color: kBlack,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4,
                              ),
                            ),
                            SizedBox(
                              height: SizeConfig.blockSizeHorizontal! * 2.5,
                            ),
                            Text(
                              'Rp. 2.500.000.000 / Year',
                              style: kRalewayMedium.copyWith(
                                color: kBlue,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3,
                              ),
                            ),
                            Expanded(
                              child: Row(children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icon_bathroom.svg'),
                                    SizedBox(
                                      width:
                                          SizeConfig.blockSizeHorizontal! * 0.5,
                                    ),
                                    Text(
                                      '4 Bathroom',
                                      style: kRalewayMedium.copyWith(
                                        color: kGrey83,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! * 3,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal! * 5,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/icon_bedroom.svg'),
                                    SizedBox(
                                      width:
                                          SizeConfig.blockSizeHorizontal! * 0.5,
                                    ),
                                    Text(
                                      '6 Bedroom',
                                      style: kRalewayMedium.copyWith(
                                        color: kGrey83,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! * 3,
                                      ),
                                    ),
                                  ],
                                )
                              ]),
                            )
                          ],
                        ),
                      )
                    ]),
                  );
                }),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
