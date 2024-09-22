import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/app/modules/home/controllers/shipping_contoller.dart';

class Shipping extends StatelessWidget {
  final AddressController controller = Get.put(AddressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded, size: 30),
        title: Text("SHIPPING ADDRESS", style: TextStyle(fontSize: 19)),
        actions: [
          Icon(
            Icons.add,
            size: 30,
          ),
          SizedBox(
            width: 5,
          )
        ],
      ),
      body: Column(
        children: [
          Obx(() => ListView.builder(
                shrinkWrap: true,
                itemCount: controller.address.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 25, top: 10, bottom: 10),
                    child: InkWell(
                      onTap: () {
                        controller.togglePress();
                      },
                      child: Container(
                        height: 80,
                        width: 200,
                        decoration: BoxDecoration(
                          border: controller.press.value
                              ? Border.all(color: Colors.black, width: 2)
                              : Border.all(color: Colors.transparent),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                backgroundImage:
                                    NetworkImage(controller.address[index][0]),
                                radius: 30,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(controller.address[index][1],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18)),
                                    Text(controller.address[index][2]),
                                  ],
                                ),
                              ),
                              controller.press.value
                                  ? Icon(Icons.check, color: Colors.black)
                                  : SizedBox(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
