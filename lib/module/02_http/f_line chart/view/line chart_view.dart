import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import '../../../../model/sales_data.dart';
import '../controller/line chart_controller.dart';
import 'package:fhe_template/core.dart';
import 'package:get/get.dart';

class LineChartView extends StatelessWidget {
  const LineChartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LineChartController>(
      init: LineChartController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("LineChart"),
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
                  SfCartesianChart(
                    // Initialize category axis
                    primaryXAxis: CategoryAxis(),
                    series: <LineSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                          // Bind data source
                          dataSource: controller.salesDataList,
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales)
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Text(
                    "From Dummy",
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SfCartesianChart(
                    // Initialize category axis
                    primaryXAxis: CategoryAxis(),
                    series: <LineSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                          // Bind data source
                          dataSource: <SalesData>[
                            SalesData(year: 'Feb', sales: 28),
                            SalesData(year: 'Mar', sales: 34),
                            SalesData(year: 'Apr', sales: 32),
                            SalesData(year: 'May', sales: 40)
                          ],
                          xValueMapper: (SalesData sales, _) => sales.year,
                          yValueMapper: (SalesData sales, _) => sales.sales)
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
