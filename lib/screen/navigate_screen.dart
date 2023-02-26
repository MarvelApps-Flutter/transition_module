import 'package:flutter/material.dart';
import 'package:transition_module/constant/string_constant.dart';

import '../constant/image_constant.dart';

class NagigateScreen extends StatelessWidget {
  const NagigateScreen({Key? key}) : super(key: key);

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
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(300, 50),
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  shape: const StadiumBorder(),
                ),
                child: const Text(
                  "Back",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
            const Spacer(
              flex: 5,
            ),
          ],
        ),
      ),
    );
  }
}
