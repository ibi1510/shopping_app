import 'package:get/get.dart';

class MyBagController extends GetxController {
  var orders = [
    [
      "https://www.tradeindia.com/_next/image/?url=https%3A%2F%2Ftiimg.tistatic.com%2Ffp%2F1%2F007%2F861%2Fwomens-fancy-designer-white-and-maroon-beautiful-and-convenient-handbag--856.jpg&w=384&q=15",
      "Panic Beg * 1",
      "Size: L",
      "Color: White"
    ],
    [
      "https://images.unsplash.com/photo-1587925358603-c2eea5305bbc?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      "Royal Watch * 1",
      "Size: L",
      "Color: Silver"
    ],
  ].obs;

  void removeItem(int index) {
    orders.removeAt(index);
  }
}
