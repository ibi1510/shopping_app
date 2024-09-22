import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/app/modules/home/controllers/woman_controller.dart';
import 'package:shopping_app/app/modules/home/views/bagmore.dart';

class WomanColletion extends StatelessWidget {
  final ProductController controller = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_rounded),
        ),
        title: Text("WOMAN"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.message_outlined)),
          SizedBox(width: 5),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          SizedBox(width: 7),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.timeline_rounded),
                        SizedBox(width: 5),
                        Text("SORT",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                  VerticalDivider(
                    width: 1,
                    color: Colors.black,
                    thickness: 5,
                  ),
                  Container(
                    width: 180,
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.filter_alt_rounded),
                        SizedBox(width: 5),
                        Text("FILTER",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                child: Obx(() {
                  return GridView.builder(
                    itemCount: controller.shop.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 390,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => Get.to(Bagmore()),
                            child: Container(
                              height: 390,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 170,
                                    height: 280,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                            controller.shop[index][0]),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Icon(
                                                Icons.currency_rupee,
                                                size: 19,
                                              ),
                                            ),
                                            TextSpan(
                                              text: controller.shop[index][1],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 70),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.heart_broken),
                                      ),
                                    ],
                                  ),
                                  Text(controller.shop[index][2]),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }),
              ),
              Container(
                height: 300,
                child: Obx(() {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: controller.details.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 400,
                        height: 300,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              height: 300,
                              width: 170,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            WidgetSpan(
                                              child: Icon(
                                                Icons.currency_rupee,
                                                size: 19,
                                              ),
                                            ),
                                            TextSpan(
                                              text: controller.details[index]
                                                  [0],
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontStyle: FontStyle.italic,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 70),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.heart_broken),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    controller.details[index][1],
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              height: 300,
                              width: 180,
                              decoration: BoxDecoration(
                                color: Colors.blueAccent,
                                image: DecorationImage(
                                  image: NetworkImage(
                                      controller.details[index][2]),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
