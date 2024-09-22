import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/app/modules/home/controllers/mybag_contoller.dart';
import 'package:shopping_app/app/modules/home/views/Shipping.dart';

class MyBag extends StatelessWidget {
  final MyBagController controller = Get.put(MyBagController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(() => ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: controller.orders.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      height: 181,
                      width: 399,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(12),
                            child: Container(
                              height: 135,
                              width: 110,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          controller.orders[index][0]),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 17),
                                    child: Row(
                                      children: [
                                        Text(controller.orders[index][1],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20)),
                                        SizedBox(
                                          width: 53,
                                        ),
                                        IconButton(
                                            onPressed: () {
                                              controller.removeItem(index);
                                            },
                                            icon: Icon(Icons.cancel_outlined))
                                      ],
                                    ),
                                  ),
                                  Text(controller.orders[index][2]),
                                  SizedBox(height: 5),
                                  Text(controller.orders[index][3]),
                                  Row(
                                    children: [
                                      RichText(
                                          text: TextSpan(children: [
                                        WidgetSpan(
                                            child: Icon(
                                          Icons.currency_rupee,
                                          size: 18,
                                        )),
                                        TextSpan(
                                          text: "230",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 18),
                                        ),
                                      ])),
                                      SizedBox(
                                        width: 55,
                                      ),
                                      GestureDetector(
                                        onTap: () => Get.to(Shipping()),
                                        child: Container(
                                          height: 40,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.black)),
                                          child: Center(
                                              child: Text(
                                            "Move Whitelist",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500),
                                          )),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
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
