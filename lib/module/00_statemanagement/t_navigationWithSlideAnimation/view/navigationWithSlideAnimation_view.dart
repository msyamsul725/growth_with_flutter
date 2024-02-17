import 'package:flutter/material.dart';
import '../controller/navigationWithSlideAnimation_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class NavigationWithSlideAnimationView extends StatelessWidget {
  const NavigationWithSlideAnimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationWithSlideAnimationController>(
      init: NavigationWithSlideAnimationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("NavigationWithSlideAnimation"),
          ),
          body: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Text(
                  "SelectedIndex: ${controller.selectedIndex}",
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Positioned(
                  top: 50.0,
                  left: 10.0,
                  right: 200,
                  height: 200,
                  child: IndexedStack(
                    index: controller.selectedIndex,
                    children: [
                      Container(
                        color: Colors.blue,
                      ),
                      Container(
                        color: Colors.red,
                      ),
                      Container(
                        color: Colors.brown,
                      ),
                      Container(
                        color: Colors.purple,
                      ),
                    ],
                  ),
                ),
                // Positioned(
                //   left: 12,
                //   right: 12,
                //   bottom: 12,
                //   child: LayoutBuilder(builder: (context, constraint) {
                //     var width = 100.0;
                //     double left = controller.selectedIndex *
                //         ((constraint.biggest.width - 24) / 4);

                //     List colorList = [
                //       Colors.green,
                //       Colors.red,
                //       Colors.blue,
                //       Colors.purple,
                //     ];
                //     return Container(
                //       padding: const EdgeInsets.all(12.0),
                //       width: MediaQuery.of(context).size.width,
                //       decoration: BoxDecoration(
                //         color: Colors.grey[600],
                //         borderRadius: const BorderRadius.all(
                //           Radius.circular(
                //             16.0,
                //           ),
                //         ),
                //       ),
                //       child: Stack(
                //         children: [
                //           AnimatedContainer(
                //             duration: const Duration(milliseconds: 500),
                //             height: 60.0,
                //             width: width,
                //             margin: EdgeInsets.only(
                //               left: left,
                //             ),
                //             decoration: BoxDecoration(
                //               color: colorList[controller.selectedIndex],
                //               borderRadius: const BorderRadius.all(
                //                 Radius.circular(
                //                   16.0,
                //                 ),
                //               ),
                //             ),
                //           ),
                //           Row(
                //             children: List.generate(
                //               controller.menuList.length,
                //               (index) {
                //                 var item = controller.menuList[index];
                //                 return Expanded(
                //                   child: InkWell(
                //                     onTap: () {
                //                       controller.selectedIndex = index;
                //                       controller.update();
                //                     },
                //                     child: SizedBox(
                //                       height: 60.0,
                //                       child: Column(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.center,
                //                         children: [
                //                           Icon(item["icon"]),
                //                           Text(
                //                             "${item["label"]}",
                //                             style: const TextStyle(
                //                               fontSize: 12.0,
                //                               fontWeight: FontWeight.bold,
                //                             ),
                //                           ),
                //                         ],
                //                       ),
                //                     ),
                //                   ),
                //                 );
                //               },
                //             ),
                //           ),
                //         ],
                //       ),
                //     );
                //   }),
                // ),
                // Positioned(
                //   top: 12,
                //   right: 12,
                //   child: LayoutBuilder(builder: (context, constraint) {
                //     var width = 100.0;
                //     double top = controller.selectedIndex * (300 - 24) / 4;

                //     List colorList = [
                //       Colors.green,
                //       Colors.red,
                //       Colors.blue,
                //       Colors.purple,
                //     ];
                //     return Container(
                //       padding: const EdgeInsets.all(12.0),
                //       width: 70.0,
                //       height: 300.0,
                //       decoration: BoxDecoration(
                //         color: Colors.grey[600],
                //         borderRadius: const BorderRadius.all(
                //           Radius.circular(
                //             16.0,
                //           ),
                //         ),
                //       ),
                //       child: Stack(
                //         children: [
                //           AnimatedContainer(
                //             duration: const Duration(milliseconds: 500),
                //             height: 60.0,
                //             width: width,
                //             margin: EdgeInsets.only(
                //               top: top,
                //             ),
                //             decoration: BoxDecoration(
                //               color: colorList[controller.selectedIndex],
                //               borderRadius: const BorderRadius.all(
                //                 Radius.circular(
                //                   16.0,
                //                 ),
                //               ),
                //             ),
                //           ),
                //           Column(
                //             children: List.generate(
                //               controller.menuList.length,
                //               (index) {
                //                 var item = controller.menuList[index];
                //                 return Expanded(
                //                   child: InkWell(
                //                     onTap: () {
                //                       controller.selectedIndex = index;
                //                       controller.update();
                //                     },
                //                     child: SizedBox(
                //                       width: MediaQuery.of(context).size.width,
                //                       height: 60.0,
                //                       child: Column(
                //                         mainAxisAlignment:
                //                             MainAxisAlignment.center,
                //                         children: [
                //                           Icon(item["icon"]),
                //                           Text(
                //                             "${item["label"]}",
                //                             style: const TextStyle(
                //                               fontSize: 10.0,
                //                               fontWeight: FontWeight.bold,
                //                             ),
                //                           ),
                //                         ],
                //                       ),
                //                     ),
                //                   ),
                //                 );
                //               },
                //             ),
                //           ),
                //         ],
                //       ),
                //     );
                //   }),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
