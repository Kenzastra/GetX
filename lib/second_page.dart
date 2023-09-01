import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:layot/controllers/tap_controller.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              width: double.maxFinite,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.green[200]),
              child: Center(
                child: Obx(
                  () => Text(
                    controller.y.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.increaseY();
              },
              child: Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green[200]),
                  child: Center(
                      child: Text(
                        'Increase Y',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))),
            ),
            GestureDetector(
              onTap: () {
                controller.decreaseY();
              },
              child: Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green[200]),
                  child: Center(
                      child: Text(
                        'Decrease Y',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ))),
            )
          ],
        ),
      ),
    );
  }
}
