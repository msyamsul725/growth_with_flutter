import 'package:flutter/material.dart';
import '../controller/theme_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class ThemeView extends StatelessWidget {
  const ThemeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      init: ThemeController(),
      builder: (controller) {
        controller.view = this;

        return Theme(
          data: controller.themeList[controller.selectedindex],
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Theme"),
              actions: const [],
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        ElevatedButton.icon(
                          icon: const Icon(Icons.color_lens),
                          label: const Text("Tema 1"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            controller.selectedindex = 0;
                            controller.update();
                          },
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.color_lens),
                          label: const Text("Tema 2"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            controller.selectedindex = 1;
                            controller.update();
                          },
                        ),
                        const SizedBox(
                          width: 12.0,
                        ),
                        ElevatedButton.icon(
                          icon: const Icon(Icons.color_lens),
                          label: const Text("Tema 3"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueGrey,
                          ),
                          onPressed: () {
                            controller.selectedindex = 2;
                            controller.update();
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: const NetworkImage(
                            "https://i.ibb.co/QrTHd59/woman.jpg",
                          ),
                        ),
                        title: const Text("Jessica Doe"),
                        subtitle: const Text("Programmer"),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.grey[200],
                          backgroundImage: const NetworkImage(
                            "https://i.ibb.co/xgwkhVb/740922.png",
                          ),
                        ),
                        title: const Text("Apple"),
                        subtitle: const Text("15 USD"),
                        trailing: SizedBox(
                          width: 120.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                radius: 12.0,
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 9.0,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.blueGrey,
                                radius: 12.0,
                                child: Center(
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 9.0,
                                    ),
                                  ),
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
            ),
          ),
        );
      },
    );
  }
}
