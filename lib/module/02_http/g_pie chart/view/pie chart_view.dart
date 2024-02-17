import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../model/sales_data.dart';
import '../controller/pie chart_controller.dart';
import 'package:fhe_template/core.dart';

class PieChartView extends StatelessWidget {
  const PieChartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PieChartController>(
      init: PieChartController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("PieChart"),
            actions: [
              IconButton(
                onPressed: () => controller.refresh(),
                icon: const Icon(
                  Icons.refresh,
                  size: 24.0,
                ),
              ),
            ],
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  const Text(
                    "From HTTP Requests",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Obx(() {
                    return SfCircularChart(
                      series: <PieSeries<SalesData, String>>[
                        PieSeries<SalesData, String>(
                            dataLabelSettings: const DataLabelSettings(
                              isVisible: true,
                            ),
                            dataSource: controller.salesDataList,
                            pointColorMapper: (SalesData data, _) => data.color,
                            xValueMapper: (SalesData data, _) => data.year,
                            yValueMapper: (SalesData data, _) => data.sales)
                      ],
                    );
                  }),
                  const Text(
                    "From Dummy",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SfCircularChart(
                    series: <PieSeries<SalesData, String>>[
                      PieSeries<SalesData, String>(
                          dataLabelSettings: const DataLabelSettings(
                            isVisible: true,
                          ),
                          dataSource: <SalesData>[
                            SalesData(
                              year: 'Jan',
                              sales: 35,
                            ),
                            SalesData(year: 'Feb', sales: 28),
                            SalesData(year: 'Mar', sales: 34),
                            SalesData(year: 'Apr', sales: 32),
                            SalesData(year: 'May', sales: 40)
                          ],
                          pointColorMapper: (SalesData data, _) => data.color,
                          xValueMapper: (SalesData data, _) => data.year,
                          yValueMapper: (SalesData data, _) => data.sales)
                    ],
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
