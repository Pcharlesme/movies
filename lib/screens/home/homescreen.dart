import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moviesapp/constants.dart';
import 'package:moviesapp/screens/home/homebody.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding),
            child: SvgPicture.asset("assets/icons/menu.svg"),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: SvgPicture.asset("assets/icons/search.svg"),
            ),
          )
        ],
      ),
      body: HomeBody(),
    );
  }
}
