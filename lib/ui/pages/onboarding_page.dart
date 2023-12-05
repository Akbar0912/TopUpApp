import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/shared/theme.dart';
import 'package:ecommerce/ui/widgets/button_text.dart';
import 'package:ecommerce/ui/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentIndex = 0;
  CarouselController carouselController = CarouselController();

  List<String> titles = [
    'Banyak Promo\nMenarik yang bisa didapatkan',
    'harga paling murah\ndapat bersaing dengan yang lain',
    'Mari bergabung',
  ];

  List<String> subtitles = [
    'kami hadir untuk mempermudah\nkegiatan anda',
    'kami dapat diandalkan dalam\nmemberikan layanan termurah',
    'Kami tunggu pembelian anda\npada aplikasi kami',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              items: [
                Image.asset(
                  'assets/img_onboarding1.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding2.png',
                  height: 331,
                ),
                Image.asset(
                  'assets/img_onboarding3.png',
                  height: 331,
                ),
              ],
              options: CarouselOptions(
                  height: 291,
                  viewportFraction: 1,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  }),
              carouselController: carouselController,
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
                vertical: 24,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: [
                Text(
                  titles[currentIndex],
                  style: blackTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: semiBold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 26,
                ),
                Text(
                  subtitles[currentIndex],
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: currentIndex == 2 ? 38 : 50,
                ),
                currentIndex == 2
                    ? Column(
                        children: [
                          CustomButton(
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/sign-up', (route) => false);
                            },
                            text: 'Daftar',
                            buttonColor: purpleColor,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ButtonText(
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                  context, '/sign-in', (route) => false);
                            },
                            text: 'Masuk',
                          ),
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == 0
                                  ? blueColor
                                  : lightBackgroundColor,
                            ),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == 1
                                  ? blueColor
                                  : lightBackgroundColor,
                            ),
                          ),
                          Container(
                            width: 12,
                            height: 12,
                            margin: const EdgeInsets.only(
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: currentIndex == 2
                                  ? blueColor
                                  : lightBackgroundColor,
                            ),
                          ),
                          const Spacer(),
                          CustomButton(
                            width: 150,
                            text: 'Next',
                            onPressed: () {
                              carouselController.nextPage();
                            },
                          ),
                        ],
                      )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
