import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/models/home_carousel_item.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) => ScreenHelper(
        key: const ObjectKey("homeHeader_screenHelper"),
        desktop: _buildDesktop(
          context,
          carouselItems[0].text,
          carouselItems[0].image,
        ),
        tablet: _buildTablet(
          context,
          carouselItems[0].text,
          carouselItems[0].image,
        ),
        mobile: _buildMobile(
          context,
          carouselItems[0].text,
          carouselItems[0].image,
        ),
      );
} // Big screens

Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: ResponsiveWrapper(
      maxWidth: kDesktopMaxWidth,
      minWidth: kDesktopMaxWidth,
      defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          ),
        ],
      ),
    ),
  );
}

// Mid screens
Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: getMobileMaxWidth(context),
    ),
    width: double.infinity,
    child: text,
  );
}

// SMall Screens

Widget _buildMobile(context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: getMobileMaxWidth(context),
    ),
    width: double.infinity,
    child: text,
  );
}

List<HomeCarouselItem> carouselItems = List.generate(
  5,
  (index) => HomeCarouselItem(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "FULL STACK DEVELOPER",
            style: GoogleFonts.oswald(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 16.0,
            ),
          ),
          const SizedBox(
            height: 18.0,
          ),
          Text(
            "RAHUL\nBAVALIYA",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            "Full-stack developer, based in Regina",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Wrap(
            children: [
              const Text(
                "Need a full custom website?",
                style: TextStyle(
                  color: kCaptionColor,
                  fontSize: 15.0,
                  height: 1.5,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    " Got a project? Let's talk.",
                    style: TextStyle(
                      height: 1.5,
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 25.0,
          ),
          Row(
            children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: 48.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28.0,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "GET STARTED",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 25.0,
              ),
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Container(
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  height: 48.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28.0,
                  ),
                  child: TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.download,
                      size: 24.0,
                      color: Colors.white,
                    ),
                    label: const Text(
                      "DOWNLOAD RESUME",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    ),
    image: Stack(
      children: <Widget>[
        SizedBox(
          width: 512,
          height: 512,
          child: Image.asset('assets/images/home_img_1.png'),
        ),
      ],
    ),
  ),
);
