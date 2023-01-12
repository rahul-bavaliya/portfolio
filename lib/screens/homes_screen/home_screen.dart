import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/constants.dart';

import '../../utils/globals.dart';
import 'components/home_body.dart';
import 'components/home_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreeneState();
}

class _HomeScreeneState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Title(
        color: kBackgroundColor,
        title: widget.title,
        child: Scaffold(
          backgroundColor: kBackgroundColor,
          key: Globals().scaffoldHomeKey,
          endDrawer: Drawer(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 24.0,
                ),
                child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return headerItems[index].isButton
                        ? MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              decoration: BoxDecoration(
                                color: kDangerColor,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 28.0),
                              child: TextButton(
                                onPressed: headerItems[index].onTap,
                                child: Text(
                                  headerItems[index].title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : ListTile(
                            title: Text(
                              headerItems[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 10.0,
                    );
                  },
                  itemCount: headerItems.length,
                ),
              ),
            ),
          ),
          body: SizedBox(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    child: HomeHeader(),
                  ),
                  SizedBox(
                    child: HomeBody(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
