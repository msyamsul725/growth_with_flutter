import 'package:flutter/material.dart';
import '../controller/navigation_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class NavigationView extends StatelessWidget {
  const NavigationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationController>(
      init: NavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Navigation"),
          ),
          body: Stack(
            children: [
              Positioned(
                right: 0,
                top: 0,
                child: Container(
                  height: 200.0,
                  width: 200.0,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: IndexedStack(
                    index: controller.selectedIndex,
                    children: [
                      Container(
                        color: Colors.green,
                      ),
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        color: Colors.red,
                      ),
                      Container(
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 12,
                top: 10,
                child: Container(
                  height: 260.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Column(
                    children: List.generate(
                      controller.navigationItems.length,
                      (index) {
                        var item = controller.navigationItems[index];
                        var selected = controller.selectedIndex == index;
                        return Expanded(
                          child: InkWell(
                            onTap: () {
                              controller.selectedIndex = index;
                              controller.update();
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 900),
                              decoration: BoxDecoration(
                                color: selected
                                    ? Colors.orange
                                    : Colors.transparent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    selected ? 60.0 : 0.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(item["icon"]),
                                  Text(
                                    item["label"],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 12,
                right: 12,
                bottom: 200,
                child: Container(
                  height: 50.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: List.generate(
                      controller.navigationItems.length,
                      (index) {
                        var item = controller.navigationItems[index];
                        var selected = controller.selectedIndex == index;
                        return Expanded(
                          child: InkWell(
                            onTap: () {
                              controller.selectedIndex = index;
                              controller.update();
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 900),
                              decoration: BoxDecoration(
                                color: selected
                                    ? Colors.orange
                                    : Colors.transparent,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    selected ? 60.0 : 0.0,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(item["icon"]),
                                  Text(
                                    item["label"],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 12,
                right: 12,
                bottom: 100,
                child: Container(
                  height: 60.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: List.generate(
                      controller.navigationItems.length,
                      (index) {
                        var item = controller.navigationItems[index];
                        var selected = controller.selectedIndex == index;
                        return Expanded(
                          child: InkWell(
                            onTap: () {
                              controller.selectedIndex = index;
                              controller.update();
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: selected ? Colors.orange : Colors.grey,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(item["icon"]),
                                  Text(
                                    item["label"],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 12,
                right: 12,
                bottom: 12,
                child: Container(
                  height: 60.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        16.0,
                      ),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: controller.selectedIndex == 0
                                ? Colors.orange
                                : Colors.transparent,
                          ),
                          onPressed: () {
                            controller.selectedIndex = 0;
                            controller.update();
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.home),
                              Text("Home"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: controller.selectedIndex == 1
                                ? Colors.orange
                                : Colors.transparent,
                          ),
                          onPressed: () {
                            controller.selectedIndex = 1;
                            controller.update();
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.list),
                              Text("Order"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: controller.selectedIndex == 2
                                ? Colors.orange
                                : Colors.transparent,
                          ),
                          onPressed: () {
                            controller.selectedIndex = 2;
                            controller.update();
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.favorite),
                              Text("Favorite"),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: controller.selectedIndex == 3
                                ? Colors.orange
                                : Colors.transparent,
                          ),
                          onPressed: () {
                            controller.selectedIndex = 3;
                            controller.update();
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.person),
                              Text("Profile"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
