import 'package:flutter/material.dart';
import '../controller/loading_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class LoadingView extends StatelessWidget {
  const LoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoadingController>(
      init: LoadingController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Loading"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  if (controller.loading.value)
                    const Center(child: CircularProgressIndicator()),
                  const SizedBox(
                    height: 20.0,
                  ),
                  if (controller.loading.value == false)
                    ListView.builder(
                      itemCount: 3,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        var item = {};
                        return Card(
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
                        );
                      },
                    ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.developer_board),
                    label: const Text("loading=true"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.loading.value = true;
                      controller.update();
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.developer_board),
                    label: const Text("loading=false"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      controller.loading.value = false;
                      controller.update();
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
