import 'package:flutter/material.dart';
import 'package:transition_module/constant/image_constant.dart';
import 'package:transition_module/constant/string_constant.dart';

import '../routing/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringConstant.routeTransition),
      ),
      body: SizedBox.expand(
        child: Column(
          children: [
            const Spacer(flex: 1),
            Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Image.asset(
                ImageConstant.marvelLogo,
                height: 200,
                width: 200,
              ),
            ),
            const Spacer(flex: 1),
            _button(context, "Left", () {
              Navigator.pushNamed(context, Routes.leftRoute, arguments: 2);
            }),
            _button(context, "Right", () {
              Navigator.pushNamed(context, Routes.leftRoute, arguments: 1);
            }),
            _button(context, "Up", () {
              Navigator.pushNamed(context, Routes.leftRoute, arguments: 0);
            }),
            _button(context, "Down", () {
              Navigator.pushNamed(context, Routes.leftRoute, arguments: 3);
            }),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }

  Padding _button(BuildContext context, String lable, Function onPressed) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ElevatedButton(
          onPressed: () => onPressed.call(),
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(300, 50),
            padding: const EdgeInsets.symmetric(vertical: 10),
            shape: const StadiumBorder(),
          ),
          child: Text(
            lable,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          )),
    );
  }
}
