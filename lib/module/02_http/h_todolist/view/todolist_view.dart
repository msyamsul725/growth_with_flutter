import 'package:flutter/material.dart';
import '../controller/todolist_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class TodolistView extends StatelessWidget {
  const TodolistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TodolistController>(
      init: TodolistController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Todolist"),
            actions: [
              IconButton(
                onPressed: () => controller.deleteAll(),
                icon: const Icon(
                  Icons.delete_sweep,
                  size: 24.0,
                ),
              ),
              IconButton(
                onPressed: () => controller.addTodo(),
                icon: const Icon(
                  Icons.add,
                  size: 24.0,
                ),
              ),
            ],
          ),
          body: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: controller.todoList.length,
                    itemBuilder: (context, index) {
                      var item = controller.todoList[index];

                      return Row(
                        children: [
                          IconButton(
                            onPressed: () => controller.deleteTodo(item),
                            icon: const Icon(
                              Icons.close,
                              size: 24.0,
                            ),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                              value: item["done"],
                              title: Text("${item["todo"]}"),
                              onChanged: (value) {
                                controller.updateTodo(item);
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
