import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:front_end/core/utils/media_query.dart';
import 'package:go_router/go_router.dart';

class Onboarding extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;
  final bool islast;
  final double width;
  final double height;

  const Onboarding({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.islast,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget picture;
    if (image.endsWith('.jpg')) {
      picture = Image.asset(
        'assets/svg/$image',
        width: UIConverter.getComponentWidth(context, width),
        height: UIConverter.getComponentHeight(context, height),
      );
    } else {
      picture = SvgPicture.asset(
        'assets/svg/$image',
        width: UIConverter.getComponentWidth(context, width),
        height: UIConverter.getComponentHeight(context, height),
      );
    }

    return Container(
      margin: islast
          ? const EdgeInsets.only(bottom: 0)
          : EdgeInsets.only(
              bottom: UIConverter.getComponentHeight(context, 150)),
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: picture,
                ),
                Container(
                  margin: const EdgeInsets.all(20),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: UIConverter.getComponentHeight(context, 35),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: UIConverter.getComponentHeight(context, 20),
                      left: UIConverter.getComponentWidth(context, 30),
                      right: UIConverter.getComponentWidth(context, 30)),
                  child: Center(
                    child: Text(
                      subtitle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: UIConverter.getComponentHeight(context, 20),
                        color: const Color.fromRGBO(164, 164, 164, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            islast
                ? Container(
                    height: UIConverter.getComponentHeight(context, 60),
                    width: UIConverter.getComponentWidth(context, 180),
                    margin:
                        const EdgeInsets.only(left: 37.0, right: 37.0, top: 36),
                    child: ElevatedButton(
                      onPressed: () {
                        GoRouter.of(context).go('/login');
                      },
                      child: const Text("Get Started"),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
