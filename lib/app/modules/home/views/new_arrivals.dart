import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/app/modules/home/controllers/newarrivals_controller.dart';
import 'package:shopping_app/app/modules/home/views/woman_colletion.dart';

class NewArrivals extends StatelessWidget {
  final ShopController controller = Get.put(ShopController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_rounded),
        ),
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
              SizedBox(height: 80),
              Center(
                child: Text(
                  "Woman's",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                "New Arrivals",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 10, top: 40),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () => Get.to(WomanColletion()),
                      child: Container(
                        width: 170,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xffeeede7),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              children: [
                                WidgetSpan(
                                  child: Icon(
                                    Icons.timeline_rounded,
                                    size: 20,
                                  ),
                                ),
                                TextSpan(
                                  text: "SORT",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 19),
                    Container(
                      width: 170,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.black),
                      ),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              WidgetSpan(
                                child: Icon(
                                  Icons.filter_alt_rounded,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text: "FILTER",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 25),
                child: Obx(() {
                  return GridView.builder(
                    itemCount: controller.shop.length,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 5.0,
                      mainAxisExtent: 390,
                    ),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
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
                                        controller.shop[index][0],
                                      ),
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
                        ],
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
