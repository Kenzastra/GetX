import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:layot/controllers/tap_controller.dart';
import 'package:layot/first_page.dart';
import 'package:layot/second_page.dart';

class Manage extends StatelessWidget {
  const Manage({super.key});

  @override
  Widget build(BuildContext context) {
    TapController controller = Get.put(TapController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "State Management",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<TapController>(builder: (tapController){
              return Container(
                margin: EdgeInsets.all(20),
                width: double.maxFinite,
                height: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[200]),
                child: Center(
                  child: Text(
                    controller.x.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              );
            }),
            GestureDetector(
              onTap: () {
                controller.increaseX();
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
                    'Increase X',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=>FirstPage());
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
                    'Go To First Page',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=>SecondPage());
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
                    'Go To Second Page',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                  margin: EdgeInsets.all(20),
                  width: double.maxFinite,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green[200]),
                  child: Center(
                      child: Text(
                    'tap',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))),
            )
          ],
        ),
      ),
    );
  }
}
