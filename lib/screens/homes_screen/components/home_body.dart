import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/screens/homes_screen/components/home_carousel.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<StatefulWidget> createState() => _HomeBodyState();
}

class _HomeBodyState extends State {
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
              children: [HomeCarouse()]),
        ),
      );
}
