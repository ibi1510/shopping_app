import 'package:get/get.dart';

class AddressController extends GetxController {
  var address = [
    [
      "https://thumbs.dreamstime.com/b/happy-old-lady-3885960.jpg",
      "57 Naci Terrace, Hunidpis",
      "francis delgado - 755 707 1486"
    ],
    [
      "https://p16-sg.tiktokcdn.com/aweme/720x720/tos-alisg-avt-0068/0339163d6310d0643ca7f079b4fabd7c.jpeg",
      "21 Prince, Singapore, Ar",
      "Brian Griffin - 029 105 810"
    ],
    [
      "https://c.stocksy.com/a/XJC000/z9/47339.jpg",
      "142 Reda View, Ljpobdad",
      "Roger Lyons - 472 471 192"
    ],
    [
      "https://p16-sg.tiktokcdn.com/aweme/720x720/tos-alisg-avt-0068/0339163d6310d0643ca7f079b4fabd7c.jpeg",
      "824 Kihoj Pike, lckuhiw",
      "Roger Lyons - 472 471 192"
    ],
    [
      "https://thumbs.dreamstime.com/z/portrait-beautiful-happy-woman-image-made-studio-model-standing-against-white-background-set-various-conceptual-42357036.jpg",
      "824 Kihoj Pike, lckuhiw",
      "Roger Lyons - 472 471 192"
    ],
  ].obs;

  var press = false.obs;

  void togglePress() {
    press.value = !press.value;
  }
}
