import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/app/modules/home/controllers/home_controller.dart';
import 'package:shopping_app/app/modules/home/views/new_arrivals.dart';

class BagMore extends StatelessWidget {
  final BagMoreController controller = Get.put(BagMoreController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BagMore",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 35,
                fontStyle: FontStyle.italic)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 4, top: 15),
              child: Container(
                height: 110,
                child: Obx(() {
                  return ListView.builder(
                    itemCount: controller.views.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                CircleAvatar(
                                  radius: 40,
                                  backgroundColor: Colors.orange,
                                  child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          controller.views[index][0]),
                                      radius: 37),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(controller.views[index][1]),
                                SizedBox(
                                  height: 6,
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }),
              ),
            ),
            Divider(
              indent: 15,
              endIndent: 15,
            ),
            Container(
              height: 600,
              width: 400,
              child: Column(
                children: [
                  Text(
                    "New Bags\nCollection",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => Get.to(NewArrivals()),
                    child: Container(
                      height: 400,
                      width: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://cdn.thewirecutter.com/wp-content/media/2023/07/backpacks-2048px-9944-1.jpg?auto=webp&quality=75&width=980&dpr=2"),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
