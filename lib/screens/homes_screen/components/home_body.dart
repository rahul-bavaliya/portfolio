import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<StatefulWidget> createState() => _HomeBodyState();
}

class _HomeBodyState extends State {
  int activePage = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
        key: const ObjectKey("homebody_img1_screenHelper"),
      );

  _buildUi(double width) => Center(
        child: LayoutBuilder(
          builder: (context, constraints) => Flex(
              mainAxisAlignment: MainAxisAlignment.center,
              direction:
                  constraints.maxWidth > 720 ? Axis.horizontal : Axis.vertical,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Image.network(
                    "https://cdn.dribbble.com/users/2424687/screenshots/5575995/media/f7a6b317e47c7ff59bcbeecb33d65638.png",
                    width: constraints.maxWidth > 720.0
                        ? constraints.maxWidth * 0.50
                        : 350.0,
                    alignment: Alignment.center,
                  ),
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Image.network(
                    "https://cdn.dribbble.com/users/2424687/screenshots/5575995/media/f7a6b317e47c7ff59bcbeecb33d65638.png",
                    width: constraints.maxWidth > 720.0
                        ? constraints.maxWidth * 0.50
                        : 350.0,
                    alignment: Alignment.center,
                  ),
                ),
              ]),
        ),
      );
}
