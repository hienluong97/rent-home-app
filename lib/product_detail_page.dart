import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';
import 'package:rent_home/app_styles.dart';
import 'package:rent_home/size_config.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.symmetric(horizontal: kPadding8),
        height: 34,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: kPadding20),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Price',
                    style: kRalewayRegular.copyWith(
                      color: kGrey83,
                      fontSize: SizeConfig.blockSizeHorizontal! * 1.5,
                    ),
                  ),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 0.5,
                  ),
                  Text(
                    'Rp. 2.500.000.000 / Year',
                    style: kRalewayRegular.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 2,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                print('test');
              },
              child: Container(
                height: 43,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius10),
                  gradient: kLinearGradientBlue,
                ),
                padding: const EdgeInsets.symmetric(
                    horizontal: kPadding8, vertical: kPadding4),
                child: Center(
                  child: Text(
                    'Rent now',
                    style: kRalewayMedium.copyWith(
                      color: kWhite,
                      fontSize: SizeConfig.blockSizeHorizontal! * 2.5,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: kPadding20),
          child: Column(
            children: [
              Container(
                height: 329,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kBorderRadius10),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 10),
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
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(kBorderRadius20),
                            bottomRight: Radius.circular(kBorderRadius20),
                          ),
                          gradient: kLinearGradientBlack,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kPadding16, vertical: kPadding20),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CircleAvatar(
                                    radius: 17,
                                    backgroundColor: kBlack.withOpacity(0.24),
                                    child: SvgPicture.asset(
                                        'assets/icon_arrow_back.svg'),
                                  ),
                                  CircleAvatar(
                                    radius: 17,
                                    backgroundColor: kBlack.withOpacity(0.24),
                                    child: SvgPicture.asset(
                                        'assets/icon_bookmark.svg'),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dreamsville House',
                                    style: kRalewayMedium.copyWith(
                                      color: kWhite,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 6,
                                    ),
                                  ),
                                  SizedBox(
                                    height:
                                        SizeConfig.blockSizeHorizontal! * 0.5,
                                  ),
                                  Text(
                                    'Jl. Sultan Iskandar Muda',
                                    style: kRalewayMedium.copyWith(
                                      color: kWhite,
                                      fontSize:
                                          SizeConfig.blockSizeHorizontal! * 3,
                                    ),
                                  ),
                                  SizedBox(
                                    height: SizeConfig.blockSizeHorizontal! * 5,
                                  ),
                                  Row(children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icon_bathroom_white.svg'),
                                        SizedBox(
                                          width:
                                              SizeConfig.blockSizeHorizontal! *
                                                  0.5,
                                        ),
                                        Text(
                                          '4 Bathroom',
                                          style: kRalewayMedium.copyWith(
                                            color: kWhite,
                                            fontSize: SizeConfig
                                                    .blockSizeHorizontal! *
                                                3,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width:
                                          SizeConfig.blockSizeHorizontal! * 5,
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icon_bedroom_white.svg'),
                                        SizedBox(
                                          width:
                                              SizeConfig.blockSizeHorizontal! *
                                                  0.5,
                                        ),
                                        Text(
                                          '6 Bedroom',
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
                                ],
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                children: [
                  Text(
                    'Description',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              ReadMoreText(
                'The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars. The 3 level house that has a modern design, has a large pool and a garage that fits up to four cars',
                trimLines: 2,
                trimMode: TrimMode.Line,
                delimiter: '...',
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                style: kRalewayRegular.copyWith(
                    color: kGrey85,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3),
                moreStyle: kRalewayRegular.copyWith(
                    color: kBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3),
                lessStyle: kRalewayRegular.copyWith(
                    color: kBlue,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3),
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                          'https://blogger.googleusercontent.com/img/a/AVvXsEiRB_dB-wXqJdvt26dkR-vqOXUjacfxAQIgFNMHl_czjMNDOh6VZVc-muCczDKZh-VU0JqUYV1M9h25ZooLGqhVfwexQO6zNY1jxeMDu0-SpfEPe8xkF7re1eldAkKld9Ct1YzesFmHpQK9wlPK330AXA85gsmDBURTQm3i7r08g6vO7KNtAPyDgeUIaQ=s740',
                        ),
                        backgroundColor: kBlue,
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Garry Allen',
                            style: kRalewayRegular.copyWith(
                                color: kBlack,
                                fontSize: SizeConfig.blockSizeHorizontal! * 4),
                          ),
                          SizedBox(
                            width: SizeConfig.blockSizeHorizontal! * 5,
                          ),
                          Text(
                            'Owner',
                            style: kRalewayRegular.copyWith(
                                color: kGrey83,
                                fontSize: SizeConfig.blockSizeHorizontal! * 3),
                          )
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: kBlue.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(kBorderRadius5),
                        ),
                        child: SvgPicture.asset('assets/icon_phone.svg'),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 4,
                      ),
                      Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                          color: kBlue.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(kBorderRadius5),
                        ),
                        child: SvgPicture.asset('assets/icon_message.svg'),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              Row(
                children: [
                  Text(
                    'Gallery',
                    style: kRalewayMedium.copyWith(
                      color: kBlack,
                      fontSize: SizeConfig.blockSizeHorizontal! * 4,
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: kPadding24,
              ),
              GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, crossAxisSpacing: kPadding8),
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: kBlue,
                        borderRadius: BorderRadius.circular(kBorderRadius10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://mod-movers.com/wp-content/uploads/2020/06/webaliser-_TPTXZd9mOo-unsplash-scaled-e1591134904605.jpg'),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color:
                              index == 4 - 1 ? kBlack.withOpacity(0.3) : null,
                          borderRadius: BorderRadius.circular(kBorderRadius10),
                        ),
                        child: Center(
                            child: index == 4 - 1
                                ? Text('+5',
                                    style: kRalewayMedium.copyWith(
                                        color: kWhite,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                5))
                                : null),
                      ),
                    );
                  }),
              const SizedBox(
                height: kPadding24,
              ),
              Container(
                height: 161,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius20),
                    image: const DecorationImage(
                      image: AssetImage('assets/map_sample.png'),
                      fit: BoxFit.cover,
                    )),
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(kBorderRadius20),
                              bottomRight: Radius.circular(kBorderRadius20),
                            ),
                            gradient: kLinearGradientWhite),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: kPadding24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
